
import 'package:sporting_app/model/file/source_file.dart';

class CompanyInfo {
  final int id;
  final String tel;
  final String businessAddress;
  final String businessNumber;
  final SourceFile sourceFile;

  CompanyInfo({
    required this.id,
    required this.tel,
    required this.businessAddress,
    required this.businessNumber,
    required this.sourceFile,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['tel'] = tel;
    data['businessAddress'] = businessAddress;
    data['businessNumber'] = businessNumber;
    return data;
  }

  factory CompanyInfo.fromJson(Map<String, dynamic> json) {
    return CompanyInfo(
      id: json['id'],
      tel: json['tel'],
      businessAddress: json['businessAdress'],
      businessNumber: json['businessNumber'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
    );
  }
}