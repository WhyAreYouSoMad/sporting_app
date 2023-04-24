import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/player_info/player_info_update/player_info_update_body.dart';

class PlayerInfoUpdatePage extends StatelessWidget {
  const PlayerInfoUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlayerInfoUpdateBody(),
    );
  }
}
