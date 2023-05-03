import 'package:dio/dio.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/company/company_request.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

class CompanyRepository {

  // 싱글톤
  static final CompanyRepository _instance = CompanyRepository._single();
  factory CompanyRepository() {
    return _instance;
  }
  CompanyRepository._single();

  // 기업 회원 정보 불러오기
  Future<ResponseDTO> fetchCompanyDetail(String jwt) async {

    // 서버와 통신
    Response response = await dio.get("/api/company/1",
        options: Options(headers: {"Authorization": "$jwt"}));

    // response의 바디 부분 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = User.fromJsonForCompany(responseDTO.data);

    // 공통 DTO 리턴
    return responseDTO;
  }

  // 기업 회원 정보 수정
  Future<ResponseDTO> fetchUpdateCompany(String jwt, CompanyUpdateReqDTO companyUpdateReqDTO) async {

    // 서버와 통신
    Response response = await dio.put("/api/company/update",
        options: Options(headers: {"Authorization": "$jwt"}),
        data: companyUpdateReqDTO.toJson());


    // response의 바디 부분 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = User.fromJsonForCompany(responseDTO.data);

    // 공통 DTO 리턴
    return responseDTO;
  }
}