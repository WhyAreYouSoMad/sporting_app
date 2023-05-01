import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

String _token = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJDT01QQU5ZIiwibmlja25hbWUiOiJiYXNlYmFsbDQ1MSIsImlkIjozLCJleHAiOjE2ODMwMTU5NDl9.ihjQvtaCBnC72a7ysQX8plR_4b23bpoI_DXg6J7DXpnMZ_Yl0Tv57u8AfEVN1uc8K4g6xaCVbFVCc0usq6qUtw';

void main() async {
  await fetchCompanyDetail_test();
}

Future<void> fetchCompanyDetail_test() async {
  String jwt = _token;
  Response response = await dio.get("/api/company/2",
      options: Options(headers: {"Authorization": "$jwt"}));
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  Logger().d(responseDTO.data);
  responseDTO.data = User.fromJsonForCompany(responseDTO.data);
}
