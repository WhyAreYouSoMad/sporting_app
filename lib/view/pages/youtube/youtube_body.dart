import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_rating_star.dart';
import 'package:sporting_app/view/pages/youtube/youtube_dummy.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyYouTubeBody extends StatefulWidget {
  const MyYouTubeBody({Key? key}) : super(key: key);

  @override
  State<MyYouTubeBody> createState() => _MyYouTubeBodyState();
}

class _MyYouTubeBodyState extends State<MyYouTubeBody> {
final YoutubePlayerFlags _playerFlages = const YoutubePlayerFlags(
  autoPlay: false,
  enableCaption: true,
);



  final _videoDataRepository = VideoDataRepository();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _videoDataRepository.videoDataList.length,
      itemBuilder: (context, index) {
        final videoData = _videoDataRepository.videoDataList[index];

       return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: videoData.youtubeId,
                  flags: _playerFlages,
                ),
              ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   videoData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "# ${videoData.channel}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                      MyRatingStar(
                        reviewCount: videoData.likes + videoData.dislikes,
                        iconSize: 18,
                        rating: videoData.likes.toDouble(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
