import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

void main() async {
  await fetchPlayerDetail_test();
}

Future<void> fetchPlayerDetail_test() async {
  // given
  String jwt = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJQTEFZRVIiLCJpZCI6MSwiZXhwIjoxNjgyNTY3NDU2fQ.Vfb9JtlLvWHiPuKGeTMovhnzsWMfhXABN2VGw0DQP1qauJJb255-5Ef_Ji6ljjT53msLQAsk0NcqudkNOsAAaw';

  Response response = await dio.get("/api/user/updateform",
      options: Options(headers: {"Authorization": "$jwt"}));
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  Logger().d(responseDTO.status);
  Logger().d(responseDTO.msg);
  Logger().d(responseDTO.data);
  responseDTO.data = User.fromJsonForPlayer(responseDTO.data);
}