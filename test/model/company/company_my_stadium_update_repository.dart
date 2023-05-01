
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/company/my_company_stadium_update/my_company_stadium_update.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

void main() async {
  await fetchMyCompanyStadiumUpdate_test();
}

Future<void> fetchMyCompanyStadiumUpdate_test() async {
  String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJDT01QQU5ZIiwibmlja25hbWUiOiJiYXNlYmFsbDQ1MSIsImlkIjozLCJleHAiOjE2ODMwMTE2MTd9.djk2ZKF2-B7uSiUICRSVzer3uh1dkQbyVCaZ8dIq5TJL1kfeKA1J4M5agh6Tqur_k0mhZ-7QQAMSMA9hFxlBHg";
  int stadiumId = 1;


    Response response = await dio.get("/api/company/stadium/$stadiumId",
        options: Options(headers: {"Authorization": "$jwt"}));
    // Logger().d("통신 완료 ${response.data}");

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  // Logger().d(responseDTO.data);
  responseDTO.data = MyCompanyStadiumUpdate.fromJson(responseDTO.data);
  // Logger().d(responseDTO.data);

}