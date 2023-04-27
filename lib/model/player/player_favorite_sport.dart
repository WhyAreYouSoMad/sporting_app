
class PlayerFavoriteSport {
  final int id;
  final String sport;

  PlayerFavoriteSport({
    required this.id,
    required this.sport,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sport'] = sport;
    return data;
  }

  factory PlayerFavoriteSport.fromJson(Map<String, dynamic> json) {
    return PlayerFavoriteSport(
      id: json['id'],
      sport: json['sport'],
    );
  }
}