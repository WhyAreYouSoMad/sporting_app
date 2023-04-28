import 'package:sporting_app/model/category/category.dart';
import 'package:sporting_app/model/court/court.dart';
import 'package:sporting_app/model/file/source_file.dart';

class Stadium {
  final int id;
  final String? sport;
  final String name;
  final SourceFile sourceFile;
  final double? lat;
  final double? lon;
  final String? address;
  final Category? category;
  final List<Court>? stadiumCourt;

  Stadium({
    required this.id,
    this.sport,
    required this.name,
    required this.sourceFile,
    this.lat,
    this.lon,
    this.address,
    this.category,
    this.stadiumCourt,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sport'] = sport;
    data['name'] = name;
    data['sourceFile'] = sourceFile;
    return data;
  }

  factory Stadium.fromJsonForList(Map<String, dynamic> json) {
    return Stadium(
      id: json['id'],
      sport: json['sport'],
      name: json['name'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
    );
  }

  factory Stadium.fromJsonForDetail(Map<String, dynamic> json) {
    return Stadium(
      id: json['id'],
      name: json['name'],
      lat: json['lat'],
      lon: json['lon'],
      address: json['address'],
      category: Category.fromJson(json['category']),
      sourceFile: SourceFile.fromJson(json['sourceFile']),
      stadiumCourt: (json['stadiumCourt'] as List<dynamic>)
          .map((courtJson) => Court.fromJson(courtJson))
          .toList(),
    );
  }

}