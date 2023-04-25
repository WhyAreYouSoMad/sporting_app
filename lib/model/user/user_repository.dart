import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
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


  Future<ResponseDTO> fetchJoin(JoinReqDTO joinReqDTO) async {
      Logger().d("Repository fetchJoin 메소드 호출됨");
      Response response = await dio.post("/api/joinPlayer", data: joinReqDTO.toJson());
      Logger().d("테스트1");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      Logger().d("테스트2");
      responseDTO.data = User.fromJson(responseDTO.data);
      Logger().d("테스트3");
      return responseDTO;
  }

}