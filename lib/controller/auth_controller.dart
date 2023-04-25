import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/auth/auth_request.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/auth/auth_repository.dart';
import 'package:sporting_app/provider/session_provider.dart';

final authControllerProvider = Provider<AuthController>((ref) {
  return AuthController(ref);
});

class AuthController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;
  AuthController(this.ref);

  Future<void> logout() async{
    try{
      await ref.read(sessionProvider).logoutSuccess();
      Navigator.pushNamedAndRemoveUntil(mContext!, MyRoute.loginPage, (route) => false);
    }catch(e){
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그아웃 실패")));
    }
  }

  Future<void> join(String email, String password) async{
    Logger().d("Conroller Join 메소드 호출됨");
    JoinReqDTO joinReqDTO = JoinReqDTO(email: email, password: password);
    ResponseDTO responseDTO = await AuthUserRepository().fetchJoin(joinReqDTO);
    if(responseDTO.status == 200){
      Navigator.popAndPushNamed(mContext!, MyRoute.loginPage);
    }else{
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("회원가입 실패")));
    }
  }

  Future<void> login(String email, String password) async {
    LoginReqDTO loginReqDTO = LoginReqDTO(email: email, password: password);
    ResponseDTO responseDTO = await AuthUserRepository().fetchLogin(loginReqDTO);
    if(responseDTO.status == 200){
      // 1. 토큰을 휴대폰에 저장
      await secureStorage.write(key: "jwt", value: responseDTO.token);

      // 2. 로그인 상태 등록
      ref.read(sessionProvider).loginSuccess(responseDTO.data, responseDTO.token!);

      // 3. 화면 이동
      Navigator.popAndPushNamed(mContext!, MyRoute.mainPage);
    }else{
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그인 실패 : ${responseDTO.msg}")));
    }
  }
}