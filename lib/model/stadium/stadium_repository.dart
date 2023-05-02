import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/stadium/stadium_request.dart';
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

  Future<ResponseDTO> fetchSaveStadium(String jwt, SaveStadiumReqDTO saveStadiumReqDTO) async {
    try {
      Logger().d("fetchSaveStadium 메소드 호출됨");
      Response response = await dio.post("/api/company/stadiums",
          options: Options(headers: {"Authorization": "$jwt"}),
          data: saveStadiumReqDTO);
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = Stadium.fromJson(responseDTO.data);
      return responseDTO;
    } catch (e) {
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> fetchMyStadiumList(String jwt) async {
    try {
      Response response = await dio.get("/api/company/stadiums?keyword=all" ,
          options: Options(headers: {"Authorization": "$jwt"}));
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<Stadium> stadiumList = mapList.map((e) => Stadium.fromJson(e)).toList();
      responseDTO.data = stadiumList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> fetchStadiumDetail(String jwt ,int stadiumId) async {
    try{
      Response response = await dio.get("/api/user/stadium/$stadiumId",
          options: Options(headers: {"Authorization": "$jwt"}));

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = Stadium.fromJson(responseDTO.data);
      return responseDTO;
    } catch (e) {
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> fetchMyStadiumDetail(String jwt ,int stadiumId) async {

    try{
      // 통신
      Response response = await dio.get("/api/company/stadium/$stadiumId",
          options: Options(headers: {"Authorization": "$jwt"}));
      // 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = Stadium.fromJson(responseDTO.data);
      // 리턴
      return responseDTO;

    } catch (e) {
      // 실패일 경우 상태 코드 400 리턴
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }
}