import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remedi_kopo/remedi_kopo.dart';
import 'package:sporting_app/view/pages/main/player_info/player_info_update/player_info_update_contents.dart';

class PlayerInfoUpdateBody extends StatefulWidget {
   PlayerInfoUpdateBody({Key? key}) : super(key: key);

  @override
  State<PlayerInfoUpdateBody> createState() => _PlayerInfoUpdateBodyState();
}

class _PlayerInfoUpdateBodyState extends State<PlayerInfoUpdateBody> {
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
         children: [
           MyImage(),
           MyName(),
           Divider(thickness: 10, height: 30),
           _Text(),
           Divider(thickness: 1, height: 30, color: Colors.black54),
           BottomContent(),
         ],
        )
      ],
    );
  }
}


Widget _Text() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Text("개인정보", textAlign: TextAlign.start),
      ],
    ),
  );
}
