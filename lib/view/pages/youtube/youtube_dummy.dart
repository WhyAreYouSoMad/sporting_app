class VideoData {
  final String title;
  final String channel;
  final int views;
  final int likes;
  final int dislikes;
  final String youtubeId;

  VideoData({
    required this.title,
    required this.channel,
    required this.views,
    required this.likes,
    required this.dislikes,
    required this.youtubeId,
});
}


class VideoDataRepository {
  final List<VideoData> videoDataList = [
    VideoData(
      youtubeId: '0V3ganZyK50',
      title: "손흥민 '아시아 최초' PL 100호골 작렬!",
      channel: "Sporting",
      views: 1010343,
      likes: 5,
      dislikes: 25238,
    ),
    VideoData(
      youtubeId: 'pLYot7ZME20',
      title: "MLB가 선정한 슈처캐치 명장면",
      channel: "Sporting",
      views: 64871,
      likes: 4,
      dislikes: 2331,
    ),
    VideoData(
      youtubeId: 'ddBoOmLfjpM',
      title: "'충격' 맨유 중요한 때에.. 실책",
      channel: "Sporting",
      views: 204935,
      likes: 3,
      dislikes: 11734,
    ),
    VideoData(
      youtubeId: 'dc-kSl93kF8',
      title: "'레전드' 박찬호 시구..",
      channel: "Sporting",
      views: 204935,
      likes: 3,
      dislikes: 734,
    ),
    VideoData(
      youtubeId: 'Dkql2me0rww',
      title: "문동주. 김서현 동시출격.. 꼴찌 탈출",
      channel: "Sporting",
      views: 205,
      likes: 4,
      dislikes: 1734,
    ),
    VideoData(
      youtubeId: 'SGq93tkmJ1c',
      title: "손흥민 원더골 TOP 5",
      channel: "Sporting",
      views: 204935,
      likes: 5,
      dislikes: 32734,
    ),
    VideoData(
      youtubeId: '3--1_F_SwBI',
      title: "프로배구 역대급 오심..",
      channel: "Sporting",
      views: 204935,
      likes: 2,
      dislikes: 7634,
    ),
    VideoData(
      youtubeId: 'PRrdONDzO2Y',
      title: "NBA 아데토쿤보 화려한 돌파..",
      channel: "Sporting",
      views: 204935,
      likes: 5,
      dislikes: 77778,
    ),
  ];
}
