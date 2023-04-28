import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail.dart';

final StadiumDetailRepositoryProvider = Provider<StadiumDetailRepository>((ref) {
  return StadiumDetailRepository();
});


class StadiumDetailRepository {


  Future<ResponseDTO> fetchStadiumDetail(String jwt ,int stadiumId) async {

    try{
      Response response = await dio.get("/api/user/detail/$stadiumId",
          options: Options(headers: {"Authorization": "$jwt"}));
      // Logger().d("통신 완료 ${response.data}");

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = StadiumDetail.fromJson(responseDTO.data);
      return responseDTO;
    } catch (e) {
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }
}