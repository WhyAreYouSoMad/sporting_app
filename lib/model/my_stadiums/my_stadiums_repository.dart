
import 'package:dio/dio.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/my_stadiums/my_stadiums.dart';

class MyStadiumsRepository {

  Future<ResponseDTO> fetchMyStadiums(String jwt, String sport) async {

    Response response = await dio.get("/api/company/stadiums?keyword=$sport");

    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

    responseDTO.data = MyStadiums.fromJson(responseDTO.data);

    return responseDTO;

  }
}