import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/stadium/stadium_request.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

void main() async {
  await fetchAddStadium_test();
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

Future<ResponseDTO> fetchAddStadium_test() async {
    String jwt = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJDT01QQU5ZIiwibmlja25hbWUiOiJ1c2VyNTEyIiwiaWQiOjQsImV4cCI6MTY4MjY3NTI2NH0.TB3Cab8WfQhnzA2VhQSrsUsaoA_xJzRxV-FfgLHNv5Cu0LEooFUuYetb5g-ExWIADgAFcvDP754lZCIkxHtnaw";
    SaveStadiumReqDTO reqBody = SaveStadiumReqDTO(name: "a특공대", address: "0000 서울 금천구 호암로 149", category: "축구");
    try {
        Response response = await dio.post("/api/company/stadiums",
            options: Options(headers: {"Authorization": "$jwt"}),
        data: reqBody);
        Logger().d(response.data);
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        Logger().d(responseDTO.data);
        responseDTO.data = Stadium.fromJson(responseDTO.data);
        return responseDTO;
    } catch (e) {
        return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
}