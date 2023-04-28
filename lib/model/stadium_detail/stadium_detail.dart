import 'package:flutter/foundation.dart';
import 'package:sporting_app/model/stadium/stadium_file.dart';
import 'package:sporting_app/model/stadium_detail/court_file.dart';
import 'package:sporting_app/model/stadium_detail/stadium_category.dart';
import 'package:sporting_app/model/stadium_detail/stadium_court.dart';

class StadiumDetail {
  final String startTime;
  final String endTime;
  final String name;
  final double lat;
  final double lon;
  final String address;
  final CateGory  category;
  final StadiumFile stadiumFile;
  final List<StadiumCourt> stadiumCourt;


  StadiumDetail({
    required this.startTime,
    required this.endTime,
    required this.name,
    required this.lat,
    required this.lon,
    required this.address,
    required this.category,
    required this.stadiumFile,
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
    data['stadiumFile'] = stadiumFile;
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
      category: CateGory.fromJson(json['category']),
      stadiumFile: StadiumFile.fromJson(json['stadiumFile']),
      stadiumCourt: (json['stadiumCourt'] as List<dynamic>)
          .map((courtJson) => StadiumCourt.fromJson(courtJson))
          .toList(),
    );
  }
}

