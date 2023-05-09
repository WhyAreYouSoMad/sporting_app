

import 'package:sporting_app/model/stadium/stadium_company_update/stadium_company_courts.dart';
import 'package:sporting_app/model/stadium/stadium_company_update/stadium_company_source_file.dart';

class CompanyUpdateStadium {
  final int id;
  final String address;
  final String status;
  final String startTime;
  final String endTime;
  final String sport;
  final StadiumCompanySourceFile sourceFile;
  final List<StadiumCompanyCourts>? courts;


  CompanyUpdateStadium({
    required this.id,
    required this.address,
    required this.status,
    required this.startTime,
    required this.endTime,
    required this.sport,
    required this.sourceFile,
    required this.courts,

  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() => {
    "id": id,
    "address": address,
    "status": status,
    "startTime": startTime,
    "endTime": endTime,
    "sport": sport,
    "sourceFile": sourceFile.toJson(),
    "courts": List<dynamic>.from(courts!.map((court) => court.toJson())),
  };



//   "sportList": List<dynamic>.from(sportList.map((sport) => sport.toJson())),
// };

  factory CompanyUpdateStadium.fromJson(Map<String, dynamic> json) {
    return CompanyUpdateStadium(
      id: json['id'],
      address: json['address'],
      status: json['status'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      sport: json['sport'],
      sourceFile: StadiumCompanySourceFile.fromJson(json['sourceFile']),
      courts: json['courts'] != null ? (json['courts'] as List<dynamic>)
          .map((courtJson) => StadiumCompanyCourts.fromJson(courtJson))
          .toList() : null,
    );
  }
}