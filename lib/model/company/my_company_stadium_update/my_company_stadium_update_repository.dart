import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/company/my_company_stadium_update/my_company_stadium_update.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail.dart';

final MyCompanyStadiumUpdateRepositoryProvider = Provider<MyCompanyStadiumUpdateRepository>((ref) {
  return MyCompanyStadiumUpdateRepository();
});


class MyCompanyStadiumUpdateRepository {


  Future<ResponseDTO> fetchStadiumUpdage(String jwt ,int stadiumId) async {

    try{
      Response response = await dio.get("/api/company/stadium/$stadiumId",
          options: Options(headers: {"Authorization": "$jwt"}));
      Logger().d("통신 완료 ${response.data}");

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = MyCompanyStadiumUpdate.fromJson(responseDTO.data);
      return responseDTO;
    } catch (e) {
      Logger().d(e);
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }
}