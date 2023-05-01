import 'package:dio/dio.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

class PlayerRepository {
  static final PlayerRepository _instance = PlayerRepository._single();
  factory PlayerRepository() {
    return _instance;
  }
  PlayerRepository._single();

  Future<ResponseDTO> fetchPlayerDetail(String jwt) async {
    Response response = await dio.get("/api/user/3",
        options: Options(headers: {"Authorization": "$jwt"}));
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = User.fromJsonForPlayer(responseDTO.data);
    return responseDTO;
  }

}