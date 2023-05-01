import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

String _token = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJQTEFZRVIiLCJuaWNrbmFtZSI6InNzYXIxMjMiLCJpZCI6MSwiZXhwIjoxNjgzMDA5MTE4fQ.NczIkH07fPyUAwrF5Tm1BDGCiIa7tk3D9-QbbUGKuNeSb0iS_QbKW3gyUClxVEvf5hYGVhv8ADimpE46-9TOcw';

void main() async {
  await fetchPlayerDetail_test();
}

Future<void> fetchPlayerDetail_test() async {
  // given
  String jwt = _token;

  Response response = await dio.get("/api/user/1",
      options: Options(headers: {"Authorization": "$jwt"}));
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  Logger().d(responseDTO.status);
  Logger().d(responseDTO.msg);
  Logger().d(responseDTO.data);
  responseDTO.data = User.fromJsonForPlayer(responseDTO.data);
}