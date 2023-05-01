import 'package:sporting_app/model/company/my_company_stadium_update/stadium_update_court.dart';
import 'package:sporting_app/model/file/source_file.dart';
import 'package:sporting_app/model/stadium_detail/stadium_category.dart';
import 'package:sporting_app/model/stadium_detail/stadium_court.dart';

class MyCompanyStadiumUpdate {
  final int id;
  final String name;
  final String address;
  final String status;
  final String starTime;
  final String endTime;
  final SourceFile  sourceFile;
  final List<StadiumUpdateCourt> courts;


  MyCompanyStadiumUpdate({
    required this.id,
    required this.name,
    required this.address,
    required this.status,
    required this.starTime,
    required this.endTime,
    required this.sourceFile,
    required this.courts,
  });


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['address'] = address;
    data['status'] = status;
    data['starTime'] = starTime;
    data['endTime'] = endTime;
    data['sourceFile'] = sourceFile;
    data['courts'] = courts;
    return data;
  }


  factory MyCompanyStadiumUpdate.fromJson(Map<String, dynamic> json) {
    return MyCompanyStadiumUpdate(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      status: json['status'],
      starTime: json['startTime'],
      endTime: json['endTime'],
      sourceFile: SourceFile.fromJson(json['sourceFile']),
      courts: (json['courts'] as List<dynamic>)
          .map((courtJson) => StadiumUpdateCourt.fromJson(courtJson))
          .toList(),
    );
  }
}

