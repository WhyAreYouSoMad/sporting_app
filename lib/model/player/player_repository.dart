import 'package:dio/dio.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/player/player_request.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/user/user.dart';

class PlayerRepository {

  // 싱글톤
  static final PlayerRepository _instance = PlayerRepository._single();
  factory PlayerRepository() {
    return _instance;
  }
  PlayerRepository._single();

  // 일반 회원 정보 불러오기
  Future<ResponseDTO> fetchPlayerDetail(String jwt) async {

    // 서버와 통신
    Response response = await dio.get("/api/user/3",
        options: Options(headers: {"Authorization": "$jwt"}));

    // response의 바디 부분 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = User.fromJsonForPlayer(responseDTO.data);

    // 공통 DTO 리턴
    return responseDTO;
  }

  // 일반 회원 정보 수정
  Future<ResponseDTO> fetchUpdatePlayer(String jwt, PlayerUpdateReqDTO playerUpdateReqDTO) async {

    // 서버와 통신
    Response response = await dio.put("/api/user/update",
        options: Options(headers: {"Authorization": "$jwt"}),
        data: playerUpdateReqDTO.toJson());


    // response의 바디 부분 파싱
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    responseDTO.data = User.fromJsonForPlayer(responseDTO.data);

    // 공통 DTO 리턴
    return responseDTO;
  }
}