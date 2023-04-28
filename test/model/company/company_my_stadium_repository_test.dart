
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

void main() async {
  await fetchMyStadiumList_test();
}

Future<void> fetchMyStadiumList_test() async {
  String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJDT01QQU5ZIiwibmlja25hbWUiOiJ1c2VyNTEyIiwiaWQiOjQsImV4cCI6MTY4MjY3ODg2N30.MaWM11h2mU4Uq65ZdtH9YDpZ_lM0iCjYB7fY2xLbZq608_0dVFK39Dhew4djjApbrt-FGmRRcIk9TNzUNE61DA";
  String keyword = '야구';

    Response response = await dio.get("/api/company/stadiums?keyword=" + keyword,
        options: Options(headers: {"Authorization": "$jwt"}));

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

  Logger().d(responseDTO.data);
    // responseDTO.data = MyStadiums.fromJson(response.data);
   Logger().d(responseDTO.data);
    List<dynamic> mapList = responseDTO.data as List<dynamic>;
    List<Stadium> postList = mapList.map((e) => Stadium.fromJsonForList(e)).toList();
    responseDTO.data = postList;


}