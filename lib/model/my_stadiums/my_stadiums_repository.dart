
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/my_stadiums/my_stadiums.dart';

class MyStadiumsRepository {

  Future<ResponseDTO> fetchMyStadiums(String jwt) async {

    try {
      Logger().d("테스트1");
      Response response = await dio.get("/api/company/stadiums?keyword=야구" ,
          options: Options(headers: {"Authorization": "$jwt"}));
      Logger().d("테스트2");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d(responseDTO.data);

      List<dynamic> mapList = responseDTO.data as List<dynamic>;

      List<MyStadiums> postList = mapList.map((e) => MyStadiums.fromJson(e)).toList();

      responseDTO.data = postList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }



  }
}