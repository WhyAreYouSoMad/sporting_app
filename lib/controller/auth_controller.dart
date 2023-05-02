import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/auth/auth_request.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/auth/auth_repository.dart';
import 'package:sporting_app/model/auth/auth_user.dart';
import 'package:sporting_app/provider/session_provider.dart';

final authControllerProvider = Provider<AuthController>((ref) {
  return AuthController(ref);
});

class AuthController {
  // 현재 페이지 context 불러오기
  final mContext = navigatorKey.currentContext;

  // ref DI
  final Ref ref;
  AuthController(this.ref);

  // 로그아웃
  Future<void> logout() async{
    try{
      Logger().d("logout 메소드 호출됨");

      // 세션 유저 값 비우기
      await ref.read(sessionProvider).logoutSuccess();

      // 로그인 페이지로 이동
      Navigator.pushNamedAndRemoveUntil(mContext!, MyRoute.loginPage, (route) => false);
    }catch(e){

      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("로그아웃 실패")));
    }
  }

  // 회원가입
  Future<void> join(String email, String password) async{
    Logger().d("join 메소드 호출됨");

    // 전달 받은 값 DTO에 담기
    JoinReqDTO joinReqDTO = JoinReqDTO(email: email, password: password);

    // Repository 메소드 호출
    ResponseDTO responseDTO = await AuthUserRepository().fetchJoin(joinReqDTO);

    // 통신 상태 값이 200일 경우
    if(responseDTO.status == 200){

      // 성공시 로그인 페이지로 이동
      Navigator.popAndPushNamed(mContext!, MyRoute.loginPage);
    }else{

      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("회원가입 실패")));
    }
  }

  // 로그인
  Future<void> login(String email, String password) async {
    Logger().d("login 메소드 호출됨");

    // 전달 받은 값 DTO에 담기
    LoginReqDTO loginReqDTO = LoginReqDTO(email: email, password: password);

    // Repository 메소드 호출
    ResponseDTO responseDTO = await AuthUserRepository().fetchLogin(loginReqDTO);

    if(responseDTO.status == 200){

      // 토큰을 휴대폰에 저장
      await secureStorage.write(key: "jwt", value: responseDTO.token);

      // 로그인 상태 등록
      ref.read(sessionProvider).loginSuccess(responseDTO.data, responseDTO.token!);

      // 변수에 유저의 역할(Role) 담기
      AuthUser authUser = responseDTO.data;
      userRole = authUser.role;

      // 토큰 유효성 확인
      AuthUserRepository().fetchJwtVerify();

      // 성공시 메인 페이지로 이동
      Navigator.popAndPushNamed(mContext!, MyRoute.mainPage);
    }else{

      // 실패 시 스낵바
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그인 실패 : ${responseDTO.msg}")));
    }
  }
}