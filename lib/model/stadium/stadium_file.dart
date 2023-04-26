class StadiumFile {
  final int id;
  final String fileUrl;

  StadiumFile({
    required this.id,
    required this.fileUrl,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['fileUrl'] = fileUrl;
    return data;
  }

  factory StadiumFile.fromJson(Map<String, dynamic> json) {
    return StadiumFile(
      id: json['id'],
      fileUrl: json['fileUrl'],
    );
  }
}