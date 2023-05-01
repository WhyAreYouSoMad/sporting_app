
import 'package:sporting_app/model/file/source_file.dart';

class PlayerInfo {
  final int id;
  final String tel;
  final String gender;
  final String age;
  final String address;
  final SourceFile sourceFile;

  PlayerInfo({
    required this.id,
    required this.tel,
    required this.gender,
    required this.age,
    required this.address,
    required this.sourceFile,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['tel'] = tel;
    data['gender'] = gender;
    data['age'] = age;
    data['address'] = address;
    return data;
  }

  factory PlayerInfo.fromJson(Map<String, dynamic> json) {
    return PlayerInfo(
      id: json['id'],
      tel: json['tel'],
      gender: json['gender'],
      age: json['age'],
      address: json['address'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
    );
  }
}