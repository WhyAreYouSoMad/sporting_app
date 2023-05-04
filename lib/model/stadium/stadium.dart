import 'package:sporting_app/model/category/category.dart';
import 'package:sporting_app/model/court/court.dart';
import 'package:sporting_app/model/file/source_file.dart';

class Stadium {
  final int id;
  final String? name;
  final SourceFile sourceFile;
  final String? sport;
  final int? price;
  final String? startTime;
  final String? endTime;
  final double? lat;
  final double? lon;
  final String? address;
  final Category? category;
  final List<Court>? courts;
  final String? status;


  Stadium({
    required this.id,
    required this.name,
    required this.sourceFile,
    this.sport,
    this.price,
    this.startTime,
    this.endTime,
    this.lat,
    this.lon,
    this.address,
    this.category,
    this.courts,
    this.status,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['sourceFile'] = sourceFile;
    return data;
  }

  factory Stadium.fromJson(Map<String, dynamic> json) {
    return Stadium(
      id: json['id'],
      name: json['name'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
      sport: json['sport'],
      price: json['price'],
      startTime: json['startTime'],
      endTime: json['endTime'],
      lat: json['lat'],
      lon: json['lon'],
      address: json['address'],
      category: json['category'] != null ? Category.fromJson(json['category']) : null,
      courts: json['courts'] != null ? (json['courts'] as List<dynamic>)
          .map((courtJson) => Court.fromJson(courtJson))
          .toList() : null,
      status: json['status'],
    );
  }

}