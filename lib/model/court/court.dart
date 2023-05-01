import 'package:sporting_app/model/file/source_file.dart';

class Court {
  final int id;
  final String title;
  final String content;
  final int capacity;
  final int price;
  final SourceFile sourceFile;


  Court({
    required this.id,
    required this.title,
    required this.content,
    required this.capacity,
    required this.price,
    required this.sourceFile,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['capacity'] = capacity;
    data['price'] = price;
    data['sourceFile'] = sourceFile;
    return data;
  }


  factory Court.fromJson(Map<String, dynamic> json) {
    return Court(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      capacity: json['capacity'],
      price: json['price'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
    );
  }
}