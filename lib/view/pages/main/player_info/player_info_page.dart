import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/main/player_info/components/player_info_body.dart';

class PlayerInfoPage extends StatelessWidget {
  const PlayerInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlayerInfoBody(),
    );
  }
}
