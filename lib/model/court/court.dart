import 'package:sporting_app/model/file/source_file.dart';

class Court {
  final int id;
  final String title;
  final String content;
  final int capacity;
  final int courtPrice;
  final SourceFile sourceFile;


  Court({
    required this.id,
    required this.title,
    required this.content,
    required this.capacity,
    required this.courtPrice,
    required this.sourceFile,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['capacity'] = capacity;
    data['courtPrice'] = courtPrice;
    data['sourceFile'] = sourceFile;
    return data;
  }


  factory Court.fromJson(Map<String, dynamic> json) {
    return Court(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      capacity: json['capacity'],
      courtPrice: json['courtPrice'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
    );
  }
}