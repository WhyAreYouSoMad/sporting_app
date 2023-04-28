
import 'package:sporting_app/model/my_stadiums/my_stadiums_sourcefile.dart';
import 'package:sporting_app/model/stadium/stadium_file.dart';

class MyStadiums {
  final int id;
  final String sport;
  final String name;
  final SourceFile sourceFile;


  MyStadiums({
    required this.id,
    required this.sport,
    required this.name,
    required this.sourceFile,
});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic> {};
    data['id'] = id;
    data['sport'] = sport;
    data['name'] = name;
    data['sourceFile'] = sourceFile;
    return data;
  }

  factory MyStadiums.fromJson(Map<String, dynamic> json) {
    return MyStadiums(
      id: json['id'],
      sport: json['sport'],
      name: json['name'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),

    );
  }

}