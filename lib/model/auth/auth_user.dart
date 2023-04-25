
class AuthUser {
  final int id;
  final String nickname;
  final String role;

  AuthUser({
    required this.id,
    required this.nickname,
    required this.role,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "id": id,
    "nickname": nickname,
    "role": role,
  };

  AuthUser.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        nickname = json["nickname"],
        role = json["role"];
}