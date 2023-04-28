import 'package:sporting_app/model/file/source_file.dart';
import 'package:sporting_app/model/category/category.dart';
import 'package:sporting_app/model/court/court.dart';

class StadiumDetail {
  final String startTime;
  final String endTime;
  final String name;
  final double lat;
  final double lon;
  final String address;
  final Category category;
  final SourceFile sourceFile;
  final List<Court> stadiumCourt;


  StadiumDetail({
    required this.startTime,
    required this.endTime,
    required this.name,
    required this.lat,
    required this.lon,
    required this.address,
    required this.category,
    required this.sourceFile,
    required this.stadiumCourt,
  });


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['name'] = name;
    data['lat'] = lat;
    data['lon'] = lon;
    data['address'] = address;
    data['cateGory'] = category;
    data['sourceFile'] = sourceFile;
    data['stadiumCourt'] = stadiumCourt;
    return data;
  }


  factory StadiumDetail.fromJson(Map<String, dynamic> json) {
    return StadiumDetail(
      startTime: json['startTime'],
      endTime: json['endTime'],
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

