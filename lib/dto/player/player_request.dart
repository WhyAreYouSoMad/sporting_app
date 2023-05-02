import 'package:sporting_app/dto/source_file/source_file_request.dart';

class PlayerUpdateReqDTO {
  final String nickname;
  final String password;
  final String tel;
  final String gender;
  final String age;
  final String address;
  final SourceFileReqDto sourceFile;
  final List<SportReqDto> sportList;


  PlayerUpdateReqDTO({
    required this.nickname,
    required this.password,
    required this.tel,
    required this.gender,
    required this.age,
    required this.address,
    required this.sourceFile,
    required this.sportList,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "nickname": nickname,
    "password": password,
    "tel": tel,
    "gender": gender,
    "age": age,
    "address": address,
    "sourceFile": sourceFile.toJson(),
    "sportList": List<dynamic>.from(sportList.map((sport) => sport.toJson())),
  };

}

class SportReqDto {
  final String sport;

  SportReqDto({
    required this.sport,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() =>
      {
        "sport": sport,
      };

}