import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/youtube/youtube_body.dart';
import 'package:sporting_app/view/pages/youtube/youtube_header.dart';

class MyYouTube extends StatelessWidget {
  const MyYouTube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyYouTubeAppBar(backgroundColor: Colors.redAccent),
      body: MyYouTubeBody(),
    );
  }
}
