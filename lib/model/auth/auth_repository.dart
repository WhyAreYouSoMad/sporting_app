import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/auth/auth_request.dart';
import 'package:sporting_app/model/auth/auth_user.dart';
import 'package:sporting_app/provider/session_provider.dart';

class AuthUserRepository {
  static final AuthUserRepository _instance = AuthUserRepository._single();
  factory AuthUserRepository() {
    return _instance;
  }
  AuthUserRepository._single();

  Future<SessionUser> fetchJwtVerify() async {
    SessionUser sessionUser = SessionUser();
    // Logger().d("테스트1");
    String? deviceJwt = await secureStorage.read(key: "jwt");
    if(deviceJwt != null){
      // Logger().d("테스트2");
      try{
        Response response = await dio.get("/api/a", options: Options(
            headers: {
              "Authorization" : "$deviceJwt"
            }
        ));
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        Logger().d(responseDTO.status);
        Logger().d(responseDTO.msg);
        Logger().d(responseDTO.data);
        Logger().d(responseDTO.token);
        responseDTO.token = deviceJwt;
        responseDTO.data = AuthUser.fromJson(responseDTO.data);

        // Logger().d("테스트4");
        if(responseDTO.status == 200){
          sessionUser.loginSuccess(responseDTO.data, responseDTO.token!);
        }else{
          sessionUser.logoutSuccess();
        }
        return sessionUser;
      }catch(e){
        Logger().d("에러 이유 : "+e.toString());
        sessionUser.logoutSuccess();
        return sessionUser;
      }
    }else{
      sessionUser.logoutSuccess();
      return sessionUser;
    }
  }


  Future<ResponseDTO> fetchJoin(JoinReqDTO joinReqDTO) async {
      Logger().d("Repository fetchJoin 메소드 호출됨");
      Response response = await dio.post("/api/joinPlayer", data: joinReqDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = AuthUser.fromJson(responseDTO.data);
      return responseDTO;
  }

  Future<ResponseDTO> fetchLogin(LoginReqDTO loginReqDTO) async {
    try{
      LoginReqDTO loginReqDTO = LoginReqDTO(email: "ssar@nate.com", password: "1234");
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
      return responseDTO;
    }catch(e){
      return ResponseDTO(status: 400, msg: "유저네임 혹은 비번이 틀렸습니다");
    }
  }

}