class JoinReqDTO {
  final String email;
  final String password;

  JoinReqDTO({
    required this.email,
    required this.password,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };

  JoinReqDTO.fromJson(Map<String, dynamic> json)
      : email = json["email"],
        password = json["password"];

}

class LoginReqDTO {
  final String email;
  final String password;

  LoginReqDTO({
    required this.email,
    required this.password
  });

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };

  LoginReqDTO.fromJson(Map<String, dynamic> json)
      : email = json["email"],
        password = json["password"];

}