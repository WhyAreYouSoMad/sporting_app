import 'package:sporting_app/model/stadium_detail/court_file.dart';

class StadiumCourt {
  final int id;
  final String title;
  final String content;
  final int capacity;
  final int courtPrice;
  final CourtFile courtFile;


  StadiumCourt({
    required this.id,
    required this.title,
    required this.content,
    required this.capacity,
    required this.courtPrice,
    required this.courtFile,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['capacity'] = capacity;
    data['courtPrice'] = courtPrice;
    data['courtFile'] = courtFile;
    return data;
  }


  factory StadiumCourt.fromJson(Map<String, dynamic> json) {
    return StadiumCourt(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      capacity: json['capacity'],
      courtPrice: json['courtPrice'],
      courtFile: CourtFile.fromJson(json['courtFile']),
    );
  }
}