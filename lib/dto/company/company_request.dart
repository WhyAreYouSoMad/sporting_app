import 'package:sporting_app/dto/source_file/source_file_request.dart';

class CompanyUpdateReqDTO {
  final String nickname;
  final String password;
  final String tel;
  final String businessAddress;
  final String businessNumber;
  final SourceFileReqDto sourceFile;


  CompanyUpdateReqDTO({
    required this.nickname,
    required this.password,
    required this.tel,
    required this.businessAddress,
    required this.businessNumber,
    required this.sourceFile,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "nickname": nickname,
    "password": password,
    "tel": tel,
    "businessAddress": businessAddress,
    "businessNumber": businessNumber,
    "sourceFile": sourceFile.toJson(),
  };

}