import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/user_request.dart';
import 'package:sporting_app/main.dart';
import 'package:sporting_app/model/user/user_repository.dart';

final userControllerProvider = Provider<UserController>((ref) {
  return UserController(ref);
});

class UserController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;
  UserController(this.ref);

  Future<void> join(String email, String password) async{
    Logger().d("Conroller Join 메소드 호출됨");
    JoinReqDTO joinReqDTO = JoinReqDTO(email: email, password: password);
    ResponseDTO responseDTO = await UserRepository().fetchJoin(joinReqDTO);
    Logger().d("Repository fetchJoin 메소드 종료됨");
    if(responseDTO.status == 200){
      Navigator.pushNamed(mContext!, MyRoute.loginPage);
    }else{
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("회원가입 실패")));
    }
  }
}