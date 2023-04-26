import 'package:sporting_app/model/stadium/stadium_file.dart';

class Stadium {
  final int id;
  final String sport;
  final String name;
  final int courtPrice;
  final StadiumFile stadiumFile;

  Stadium({
    required this.id,
    required this.sport,
    required this.name,
    required this.courtPrice,
    required this.stadiumFile,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sport'] = sport;
    data['name'] = name;
    data['courtPrice'] = courtPrice;
    data['stadiumFile'] = stadiumFile;
    return data;
  }

  factory Stadium.fromJson(Map<String, dynamic> json) {
    return Stadium(
      id: json['id'],
      sport: json['sport'],
      name: json['name'],
      courtPrice: json['courtPrice'],
      stadiumFile: StadiumFile.fromJson(json['stadiumFile']),
    );
  }
}