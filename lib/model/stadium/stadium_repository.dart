import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/stadium/stadium_request.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/model/stadium/stadium_company_update/stadium_comapny_update.dart';

class StadiumRepository {

  // 싱글톤
  static final StadiumRepository _instance = StadiumRepository._single();
  factory StadiumRepository() {
    return _instance;
  }
  StadiumRepository._single();

  // 경기장 리스트 불러오기
  Future<ResponseDTO> fetchStadiumList(String jwt, String keyword) async {
    try {

      // 서버와 통신
      Response response = await dio.get("/api/user/stadiums?keyword="+keyword,
          options: Options(headers: {"Authorization": "$jwt"}));

      // response의 바디 부분 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<Stadium> postList = mapList.map((e) => Stadium.fromJson(e)).toList();
      responseDTO.data = postList;

      // 공통 DTO 리턴
      return responseDTO;
    } catch (e) {

      // 실패할 경우 상태값 400 리턴
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  // 경기장 상세보기 불러오기
  Future<ResponseDTO> fetchStadiumDetail(String jwt ,int stadiumId) async {
    try{

      // 서버와 통신
      Response response = await dio.get("/api/user/stadium/$stadiumId",
          options: Options(headers: {"Authorization": "$jwt"}));

      // response의 바디 부분 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = Stadium.fromJson(responseDTO.data);

      // 공통 DTO 리턴
      return responseDTO;
    } catch (e) {

      // 실패할 경우 상태값 400 리턴
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> fetchSaveStadium(String jwt, SaveStadiumReqDTO saveStadiumReqDTO) async {
    try {
      Logger().d("fetchSaveStadium 메소드 호출 됨");

      // 서버와 통신
      Response response = await dio.post("/api/company/stadiums",
          options: Options(headers: {"Authorization": "$jwt"}),
          data: saveStadiumReqDTO);

      Logger().d(response.data);

      // response의 바디 부분 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = Stadium.fromJson(responseDTO.data);

      Logger().d("테스트2");

      // 공통 DTO 리턴
      return responseDTO;
    } catch (e) {

      // 실패할 경우 상태값 400 리턴
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> fetchMyStadiumList(String jwt) async {
    try {

      // 서버와 통신
      Response response = await dio.get("/api/company/stadiums?keyword=all" ,
          options: Options(headers: {"Authorization": "$jwt"}));

      // response의 바디 부분 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<Stadium> stadiumList = mapList.map((e) => Stadium.fromJson(e)).toList();
      responseDTO.data = stadiumList;

      // 공통 DTO 리턴
      return responseDTO;
    } catch (e) {

      // 실패할 경우 상태값 400 리턴
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> fetchMyStadiumDetail(String jwt ,int stadiumId) async {

    try{
      // 서버와 통신
      Response response = await dio.get("/api/company/stadium/$stadiumId",
          options: Options(headers: {"Authorization": "$jwt"}));

      // response의 바디 부분 파싱
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = Stadium.fromJson(responseDTO.data);

      // 공통 DTO 리턴
      return responseDTO;

    } catch (e) {

      // 실패할 경우 상태값 400 리턴
      return ResponseDTO(status: 400, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> fetchCompanyStadiumUpdate(String jwt, CompanyUpdateStadium companyUpdateStadium) async {
    
    Response response = await dio.put("/api/company/stadiums",
    options: Options(headers: {"Authorization": "$jwt"}),
      data: companyUpdateStadium.toJson());
    
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = Stadium.fromJson(responseDTO.data);

    return responseDTO;

    
  }
  
  
}