import 'package:sporting_app/model/file/source_file.dart';

class Stadium {
  final int id;
  final String sport;
  final String name;
  final SourceFile sourceFile;

  Stadium({
    required this.id,
    required this.sport,
    required this.name,
    required this.sourceFile,
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

  factory Stadium.fromJson(Map<String, dynamic> json) {
    return Stadium(
      id: json['id'],
      sport: json['sport'],
      name: json['name'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
    );
  }
}