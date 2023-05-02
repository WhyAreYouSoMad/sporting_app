
import 'package:sporting_app/model/company/company_info.dart';
import 'package:sporting_app/model/player/player_favorite_sport.dart';
import 'package:sporting_app/model/player/player_info.dart';

class User {
  final int id;
  final String nickname;
  final String? email;
  final PlayerInfo? playerInfo;
  final List<PlayerFavoriteSport>? playerFavoriteSport;
  final CompanyInfo? companyInfo;


  User({
    required this.id,
    required this.nickname,
    required this.email,
    this.playerInfo,
    this.playerFavoriteSport,
    this.companyInfo,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nickname'] = nickname;
    data['email'] = email;
    data['playerInfo'] = playerInfo;
    data['playerFavoriteSport'] = playerFavoriteSport;
    return data;
  }

  factory User.fromJsonForPlayer(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      nickname: json['nickname'],
      email: json['email'],
      playerInfo: json['playerInfo'] != null ? PlayerInfo.fromJson(json['playerInfo']) : null,
      playerFavoriteSport: json['playerFavoriteSport'] != null ? (json['playerFavoriteSport'] as List<dynamic>)
          .map((item) => PlayerFavoriteSport.fromJson(item))
          .toList() : null,
    );
  }

  factory User.fromJsonForCompany(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      nickname: json['nickname'],
      email: json['email'],
      companyInfo: CompanyInfo.fromJson(json['companyInfo']),
    );
  }
}