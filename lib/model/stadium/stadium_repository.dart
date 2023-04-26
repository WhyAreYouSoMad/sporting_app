import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

class StadiumRepository {
  static final StadiumRepository _instance = StadiumRepository._single();
  factory StadiumRepository() {
    return _instance;
  }
  StadiumRepository._single();

  Future<ResponseDTO> fetchStadiumList(String jwt, String keyword) async {
    try {
      Response response = await dio.get("/api/user/stadiums?keyword="+keyword,
          options: Options(headers: {"Authorization": "$jwt"}));
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<Stadium> postList = mapList.map((e) => Stadium.fromJson(e)).toList();
      responseDTO.data = postList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

}