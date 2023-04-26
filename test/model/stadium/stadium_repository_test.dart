import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

void main() async {
  await fetchStadiumList_test();
}

Future<void> fetchStadiumList_test() async {
    String jwt = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJQTEFZRVIiLCJpZCI6MSwiZXhwIjoxNjgyNDgyNTQwfQ.HQW5DCRBrOFMdr_2hu0jSOXA_iRDpw_Z7HqZ1gKXPrBj77iwMi15nvsf6oyj1v_8t9NFYIrXNUxfzAn4YtCmbg';
    String keyword = '야구';
    Response response = await dio.get("/api/user/stadiums?keyword="+keyword,
        options: Options(headers: {"Authorization": "$jwt"}));
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO.data);
    List<dynamic> mapList = responseDTO.data as List<dynamic>;
    List<Stadium> postList = mapList.map((e) => Stadium.fromJson(e)).toList();
    // postList.forEach((element) {Logger().d(element.name);});
    responseDTO.data = postList;
}