import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

String _companyToken = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJDT01QQU5ZIiwibmlja25hbWUiOiJiYXNlYmFsbDQ1MSIsImlkIjozLCJleHAiOjE2ODMwODIxNDB9.0wjYdXIjsGl8D6_PV5HSVQ-88VFMDyaEeZP2jUssKuL0Z_oquqVgbD70GQ1XPbGrF1YdoJWY1zgsMIkzQr5d-g';
String _playerToken = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJQTEFZRVIiLCJuaWNrbmFtZSI6Ijg4OCIsImlkIjoxLCJleHAiOjE2ODMwODIxNzh9.t0kMx2E0ZcwkoZM6syamyXMPJG-Q-u7ATW5DCl3PSuIejS6k0dhwsGbuXXwa9StKLmFzbApp1IfappDmnCoX8A';

void main() async {
  await fetchStadiumList_test();
  await fetchStadiumDetail_test();
  await fetchMyStadiumList_test();
  await fetchMyStadiumDetail_test();
}

Future<void> fetchStadiumList_test() async {
    String jwt = _playerToken;
    String keyword = '볼링';
    Response response = await dio.get("/api/user/stadiums?keyword="+keyword,
        options: Options(headers: {"Authorization": "$jwt"}));
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO.data);
    List<dynamic> mapList = responseDTO.data as List<dynamic>;
    List<Stadium> postList = mapList.map((e) => Stadium.fromJson(e)).toList();
    responseDTO.data = postList;
    Logger().d(postList[0].id);
    Logger().d(postList[0].name);
}

Future<void> fetchStadiumDetail_test() async {
    String jwt = _playerToken;
    int stadiumId = 1;
    Response response = await dio.get("/api/user/stadium/$stadiumId",
        options: Options(headers: {"Authorization": "$jwt"}));

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = Stadium.fromJson(responseDTO.data);

    Logger().d(response.data);
}

Future<void> fetchMyStadiumList_test() async {
    String jwt = _companyToken;
    String keyword = 'all';

    Response response = await dio.get("/api/company/stadiums?keyword=" + keyword,
        options: Options(headers: {"Authorization": "$jwt"}));

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    Logger().d(responseDTO.data);
    List<dynamic> mapList = responseDTO.data as List<dynamic>;
    List<Stadium> postList = mapList.map((e) => Stadium.fromJson(e)).toList();
    responseDTO.data = postList;
}

Future<void> fetchMyStadiumDetail_test() async {
    String jwt = _companyToken;
    int stadiumId = 1;

    Response response = await dio.get("/api/company/stadium/$stadiumId",
        options: Options(headers: {"Authorization": "$jwt"}));
    Logger().d("통신 완료 ${response.data}");

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    Logger().d(responseDTO.data);
    responseDTO.data = Stadium.fromJson(responseDTO.data);
    Logger().d(responseDTO.data);

}