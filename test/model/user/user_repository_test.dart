import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/user_request.dart';
import 'package:sporting_app/model/user/user.dart';

void main() async {
  await fetchJoin_test();
}

Future<void> fetchJoin_test() async {
    JoinRequestDTO joinReqDTO = JoinRequestDTO(email: 'ssar23@nate.com', password: "1234");
    Response response = await dio.post("/api/joinPlayer", data: joinReqDTO.toJson());
    Logger().d(response.data);
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO.status);
    Logger().d(responseDTO.msg);
    Logger().d(responseDTO.data);
    responseDTO.data = User.fromJson(responseDTO.data);
}