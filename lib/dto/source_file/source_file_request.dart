class SourceFileReqDto {
  final int? id;
  final String fileBase64;

  SourceFileReqDto({
    required this.id,
    required this.fileBase64,
  });

  // 통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트
  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "fileBase64": fileBase64,
      };

}
