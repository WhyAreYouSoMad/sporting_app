import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/auth/auth_request.dart';
import 'package:sporting_app/model/auth/auth_user.dart';
import 'package:sporting_app/provider/session_provider.dart';

class AuthUserRepository {

  // 싱글톤
  static final AuthUserRepository _instance = AuthUserRepository._single();
  factory AuthUserRepository() {
    return _instance;
  }
  AuthUserRepository._single();

  // 토큰 유효성 검증
  Future<SessionUser> fetchJwtVerify() async {
    SessionUser sessionUser = SessionUser();

    // secureStorage에 있는 jwt 토큰 불러오기
    String? deviceJwt = await secureStorage.read(key: "jwt");

    // 토큰이 있을 경우
    if(deviceJwt != null){
      try{

        // 서버와 통신
        Response response = await dio.get("/api/a", options: Options(
            headers: {
              "Authorization" : "$deviceJwt"
            }
        ));

        // response의 바디 부분 파싱
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

        // 토큰 공통 DTO에 저장
        responseDTO.token = deviceJwt;

        // 서버에서 전달한 유저 정보 공통 DTO에 저장
        responseDTO.data = AuthUser.fromJson(responseDTO.data);

        // 변수에 유저 역할 저장
        AuthUser authUser = responseDTO.data;
        userRole = authUser.role;

        // 통신 상태 값이 200일 경우
        if(responseDTO.status == 200){

          // 세션 유저 객체에 해당 유저 정보 저장
          sessionUser.loginSuccess(responseDTO.data, responseDTO.token!);
        }else{

          // 실패할 경우 세션 유저 객체 정보 삭제
          sessionUser.logoutSuccess();
        }

        // 세션 유저 리턴
        return sessionUser;
      }catch(e){

        // 에러 이유 로그에 띄우기
        Logger().d("에러 이유 : "+e.toString());

        // 에러가 발생할 경우 세션 유저 객체 정보 삭제
        sessionUser.logoutSuccess();

        // 세션 유저 리턴
        return sessionUser;
      }

    // 토큰이 없을 경우
    }else{

      // 세션 유저 객체 정보 삭제
      sessionUser.logoutSuccess();

      // 세션 유저 리턴
      return sessionUser;
    }
  }


  Future<ResponseDTO> fetchJoin(JoinReqDTO joinReqDTO) async {
      Logger().d("Repository fetchJoin 메소드 호출됨");

      // 서버와 통신
      Response response = await dio.post("/api/joinPlayer", data: joinReqDTO.toJson());

      // response의 바디 부분 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = AuthUser.fromJson(responseDTO.data);

      // 공통 DTO 리턴
      return responseDTO;
  }

  Future<ResponseDTO> fetchLogin(LoginReqDTO loginReqDTO) async {
    try{
      // 1. 통신 시작
      Response response = await dio.post("/api/login", data: loginReqDTO.toJson());

      // 2. DTO 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = AuthUser.fromJson(responseDTO.data);

      // 3. 토큰 받기
      final authorization = response.headers["authorization"];
      if(authorization != null){
        responseDTO.token = authorization.first;
      }

      // 공통 DTO 리턴
      return responseDTO;
    }catch(e){

      // 오류가 발생할 경우 실패 리턴
      return ResponseDTO(status: 400, msg: "유저네임 혹은 비번이 틀렸습니다");
    }
  }

}