import 'package:dio/dio.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

class CompanyRepository {
  static final CompanyRepository _instance = CompanyRepository._single();
  factory CompanyRepository() {
    return _instance;
  }
  CompanyRepository._single();

  Future<ResponseDTO> fetchCompanyDetail(String jwt) async {
    Response response = await dio.get("/api/company/1",
        options: Options(headers: {"Authorization": "$jwt"}));
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = User.fromJsonForCompany(responseDTO.data);
    return responseDTO;
  }

}