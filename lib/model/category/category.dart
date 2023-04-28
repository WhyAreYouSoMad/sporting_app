class Category {
  final int id;
  final String sport;

  Category({
    required this.id,
    required this.sport,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sport'] = sport;
    return data;
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      sport: json['sport'],
    );
  }
}