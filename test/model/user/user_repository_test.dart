import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/auth/auth_request.dart';
import 'package:sporting_app/model/auth/auth_user.dart';

void main() async {
  await fetchLogin_test();
}

Future<void> fetchJoin_test() async {
  JoinReqDTO joinReqDTO =
      JoinReqDTO(email: 'ssar23333@nate.com', password: "1234");
  Response response =
      await dio.post("/api/joinPlayer", data: joinReqDTO.toJson());
  Logger().d(response.data);
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  Logger().d(responseDTO.status);
  Logger().d(responseDTO.msg);
  Logger().d(responseDTO.data);
  responseDTO.data = AuthUser.fromJson(responseDTO.data);
  Logger().d(responseDTO.data);
}

Future<void> fetchLogin_test() async {
  LoginReqDTO loginReqDTO =
      LoginReqDTO(email: "cos@nate.com", password: "1234");
  // 1. 통신 시작
  Response response = await dio.post("/api/login", data: loginReqDTO.toJson());

  // 2. DTO 파싱
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  responseDTO.data = AuthUser.fromJson(responseDTO.data);
  Logger().d(responseDTO.data);

  // 3. 토큰 받기
  final authorization = response.headers["authorization"];
  Logger().d(authorization);
  if (authorization != null) {
    responseDTO.token = authorization.first;
  }
  Logger().d(responseDTO.token);
}
