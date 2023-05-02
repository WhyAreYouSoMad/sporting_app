import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/dto/player/player_request.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/dto/source_file/source_file_request.dart';
import 'package:sporting_app/model/user/user.dart';

String _playerToken = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqd3RzdHVkeSIsInJvbGUiOiJQTEFZRVIiLCJuaWNrbmFtZSI6InNzYXIxMjMiLCJpZCI6MSwiZXhwIjoxNjgzMDcyMzQ4fQ.ndKVa0z0sixxGNs28C095uM4z74AcqI5_Bg7cBex8FJ6kD4guyzsghSgPWY27FYa5XLKSEhvxH5y7xKTE4aB3g';

void main() async {
  // await fetchPlayerDetail_test();
  await fetchUpdatePlayer_test();
}

Future<void> fetchPlayerDetail_test() async {
  // given
  String jwt = _playerToken;

  Response response = await dio.get("/api/user/1",
      options: Options(headers: {"Authorization": "$jwt"}));
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  Logger().d(responseDTO.status);
  Logger().d(responseDTO.msg);
  Logger().d(responseDTO.data);
  responseDTO.data = User.fromJsonForPlayer(responseDTO.data);
}

// 일반 회원 정보 수정
Future<void> fetchUpdatePlayer_test() async {
  // given
  String jwt = _playerToken;
  SourceFileReqDto sourceFile = SourceFileReqDto(id: 5, fileBase64: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wB//9k=...");
  List<SportReqDto> sportList = [SportReqDto(sport: '축구'), SportReqDto(sport: '야구'), SportReqDto(sport: '볼링')];
  PlayerUpdateReqDTO playerUpdateReqDTO = PlayerUpdateReqDTO(nickname: '888', password: '1234', tel: '010-1234-5678', gender: '여자', age: 'AGE_30', address: '서울시 강서구 무학대로 6길 11', sourceFile: sourceFile, sportList: sportList);
  Logger().d(playerUpdateReqDTO.toJson());

  // 서버와 통신
  Response response = await dio.get("/api/user/1",
      options: Options(headers: {"Authorization": "$jwt"}),
      data: playerUpdateReqDTO.toJson());

  // response의 바디 부분 파싱
  ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  responseDTO.data = User.fromJsonForPlayer(responseDTO.data);

  Logger().d(response.data);
}