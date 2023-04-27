import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_body.dart';

class PlayerInfoUpdatePage extends StatelessWidget {
  const PlayerInfoUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: kDarkIconColor),
        ),
        title: const Text(
          '내 정보 수정',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: PlayerInfoUpdateBody(),
    );
  }
}
