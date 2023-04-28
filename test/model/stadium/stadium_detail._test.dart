import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail.dart';

void main() async {
  await fetchStadiumRepositoryList_test();
}


Future<void> fetchStadiumRepositoryList_test() async {

    //
  String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJQTEFZRVIiLCJuaWNrbmFtZSI6InNzYXIxMjMiLCJpZCI6MSwiZXhwIjoxNjgyNTg1NzYzfQ.It9nInadoTHkVYWP5rmorvOSiGs_3BMcOLxN8lbqdKMr4sgR_50LL4JkE_DId2pNpmIMFg3fIpOH8w7z0qu73g";
  int stadiumId = 1;
    Response response = await dio.get("/api/user/detail/$stadiumId",
        options: Options(headers: {"Authorization": "$jwt"}));

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = StadiumDetail.fromJson(responseDTO.data);

    Logger().d(response.data);
}