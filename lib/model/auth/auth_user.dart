
class AuthUser {
  final int id;
  final String role;

  AuthUser({
    required this.id,
    required this.role,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "id": id,
    "role": role,
  };

  AuthUser.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        role = json["role"];
}