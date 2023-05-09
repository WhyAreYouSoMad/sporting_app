

import 'package:sporting_app/model/stadium/stadium_company_update/stadium_company_source_file.dart';

class StadiumCompanyCourts {
  final int id;
  final String title;
  final String content;
  final int capacity;
  final int courtPrice;
  final StadiumCompanySourceFile sourceFile;

  StadiumCompanyCourts({
    required this.id,
    required this.title,
    required this.content,
    required this.capacity,
    required this.courtPrice,
    required this.sourceFile,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "content": content,
    "capacity": capacity,
    "courtPrice": courtPrice,
    "sourceFile": sourceFile.toJson(),
  };


  factory StadiumCompanyCourts.fromJson(Map<String, dynamic> json) {
    return StadiumCompanyCourts(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      capacity: json['capacity'],
      courtPrice: json['courtPrice'],
      sourceFile: StadiumCompanySourceFile.fromJson(json['sourceFile']),

    );
  }
}