import 'package:sporting_app/model/file/source_file.dart';
import 'package:sporting_app/model/stadium_detail/stadium_category.dart';
import 'package:sporting_app/model/stadium_detail/stadium_court.dart';

class StadiumUpdateCourt {
  final int id;
  final String title;
  final String content;
  final int capacity;
  final int price;
  final String sport;
  final SourceFile  sourceFile;


  StadiumUpdateCourt({
    required this.id,
    required this.title,
    required this.content,
    required this.capacity,
    required this.price,
    required this.sport,
    required this.sourceFile,
  });


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['capacity'] = capacity;
    data['price'] = price;
    data['sport'] = sport;
    data['sourceFile'] = sourceFile;
    return data;
  }


  factory StadiumUpdateCourt.fromJson(Map<String, dynamic> json) {
    return StadiumUpdateCourt(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      capacity: json['capacity'],
      price: json['price'],
      sport: json['sport'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
      // stadiumCourt: (json['stadiumCourt'] as List<dynamic>)
      //     .map((courtJson) => StadiumCourt.fromJson(courtJson))
      //     .toList(),
    );
  }
}

