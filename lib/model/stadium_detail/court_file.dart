class CourtFile {
  final int id;
  final String fileUrl;

  CourtFile({
    required this.id,
    required this.fileUrl,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['fileUrl'] = fileUrl;
    return data;
  }

  factory CourtFile.fromJson(Map<String, dynamic> json) {
    return CourtFile(
      id: json['id'],
      fileUrl: json['fileUrl'],
    );
  }
}