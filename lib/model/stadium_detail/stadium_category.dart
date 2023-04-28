class CateGory {
  final int id;
  final String sport;

  CateGory({
    required this.id,
    required this.sport,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sport'] = sport;
    return data;
  }

  factory CateGory.fromJson(Map<String, dynamic> json) {
    return CateGory(
      id: json['id'],
      sport: json['sport'],
    );
  }
}