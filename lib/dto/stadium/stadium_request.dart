class SaveStadiumReqDTO {
  final String name;
  final String address;
  final String category;

  SaveStadiumReqDTO({
    required this.name,
    required this.address,
    required this.category,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() => {
    "name": name,
    "address": address,
    "category": category,
  };

  SaveStadiumReqDTO.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        address = json["address"],
        category = json["category"];

}