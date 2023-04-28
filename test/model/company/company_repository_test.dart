import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

void main() async {
  await fetchCompanyDetail_test();
}

Future<void> fetchCompanyDetail_test() async {
  String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJDT01QQU5ZIiwibmlja25hbWUiOiJiYXNlYmFsbDQ1MSIsImlkIjozLCJleHAiOjE2ODI2NTA2Mjh9.-ZmbFatcoZR6YpsKJadHlpuOHV7TdGzIUCecdRsX7-3ReyKMuteKimwyUdKsyBuMhfdwWKfKCuW11ECdF1quGA";
  Response response = await dio.get("/api/company/updateform",
      options: Options(headers: {"Authorization": "$jwt"}));
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  Logger().d(responseDTO.data);
  responseDTO.data = User.fromJsonForCompany(responseDTO.data);
}
