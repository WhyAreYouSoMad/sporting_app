import 'package:dio/dio.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/user_request.dart';
import 'package:sporting_app/model/user/user.dart';

class UserRepository {
  static final UserRepository _instance = UserRepository._single();
  factory UserRepository() {
    return _instance;
  }
  UserRepository._single();


  Future<ResponseDTO> fetchJoin(JoinRequestDTO joinReqDTO) async {
    try {
      Response response = await dio.post("/join", data: joinReqDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = User.fromJson(responseDTO.data);
      return responseDTO;
    } catch(e) {
      return ResponseDTO(status: 400, msg: "유저네임중복");
    }
  }

}