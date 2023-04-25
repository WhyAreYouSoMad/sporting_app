import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/player/player_info_update/components/player_info_update_body.dart';

class PlayerInfoUpdatePage extends StatelessWidget {
  const PlayerInfoUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlayerInfoUpdateBody(),
    );
  }
}
