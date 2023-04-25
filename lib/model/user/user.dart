import 'package:intl/intl.dart';

class User {
  final int id;
  final String email;
  final String role;
  final DateTime createdAt;

  User({
    required this.id,
    required this.email,
    required this.role,
    required this.createdAt,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "role": role,
    "createdAt": createdAt,
  };

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        email = json["email"],
        role = json["role"],
        createdAt = DateFormat("yyyy-mm-dd").parse(json["createdAt"]);
}