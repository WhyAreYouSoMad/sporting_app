class User {
  int id;
  String nickname;
  String email;
  String role;
  String status;

  User(
      {required this.id,
      required this.nickname,
      required this.email,
      required this.role,
      required this.status});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json['id'],
      nickname: json['nickname'],
      email: json['email'],
      role: json['role'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
      data['id'] = id;
      data['nickname'] = nickname;
      data['email'] = email;
      data['role'] = role;
      data['status'] = status;
      return data;
  }
}
