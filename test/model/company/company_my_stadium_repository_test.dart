
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/my_stadiums/my_stadiums.dart';

void main() async {
  await fetchMyStadiumList_test();
}

Future<void> fetchMyStadiumList_test() async {
  String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJDT01QQU5ZIiwibmlja25hbWUiOiJiYXNlYmFsbDQ1MSIsImlkIjozLCJleHAiOjE2ODI2Njc0Njh9.XqdpUhSR6Wm8zNm234aLDpUUCeonONYnrZRHbp8jHF3jx5C3o6lcNWVHMIKt_KeguxUXp_NQTDiIJXevr8_7-A";
  String keyword = '야구';

    Response response = await dio.get("/api/company/stadiums?keyword=" + keyword,
        options: Options(headers: {"Authorization": "$jwt"}));

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

  Logger().d(responseDTO.data);
    // responseDTO.data = MyStadiums.fromJson(response.data);
   Logger().d(responseDTO.data);
    List<dynamic> mapList = responseDTO.data as List<dynamic>;
    List<MyStadiums> postList = mapList.map((e) => MyStadiums.fromJson(e)).toList();
    responseDTO.data = postList;


}