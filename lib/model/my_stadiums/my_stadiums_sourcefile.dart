class SourceFile {
  final int id;
  final String fileUrl;

  SourceFile({
    required this.id,
    required this.fileUrl,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['fileUrl'] = fileUrl;
    return data;
  }

  factory SourceFile.fromJson(Map<String, dynamic> json) {
    return SourceFile(
      id: json['id'],
      fileUrl: json['fileUrl'],
    );
  }
}