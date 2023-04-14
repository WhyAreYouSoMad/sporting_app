import 'package:sporting_app/model/user/user.dart';

class PlayerInfo {
  int? id;
  User user;
  String gender;
  String age;
  String address;
  String tel;

  PlayerInfo(
      {required this.id,
      required this.user,
      required this.address,
      required this.age,
      required this.gender,
      required this.tel});

  factory PlayerInfo.fromJson(Map<String, dynamic> json){
    return PlayerInfo(
      id: json['id'],
      user: json['user'],
      address: json['address'],
      age: json['age'],
      gender: json['gender'],
      tel: json['tel'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user'] = user;
    data['address'] = address;
    data['age'] = age;
    data['gender'] = gender;
    data['tel'] = tel;
    return data;
  }
}
