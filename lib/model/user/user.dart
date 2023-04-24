import 'package:intl/intl.dart';

class User {
  final int id;
  final String email;
  final DateTime created;

  User({
    required this.id,
    required this.email,
    required this.created,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "created": created,
  };

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        email = json["email"],
        created = DateFormat("yyyy-mm-dd").parse(json["created"]);
}