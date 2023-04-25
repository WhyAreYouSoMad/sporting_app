import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_info_inquiry.dart';
import 'package:sporting_app/view/components/my_info_reservation.dart';
import 'package:sporting_app/view/pages/player/player_info/components/player_info_contents.dart';

class PlayerInfoBody extends StatelessWidget {
  const PlayerInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              PlayerInfoContents(),
              SizedBox(height: 40),
              MyInfoReservation(),
              SizedBox(height: 30),
            ],
          ),
        ),
        Divider(
          color: kGrayColor,
          thickness: 11,
          height: 1,
        ),
        MyInfoInquiry(),
      ],
    );
  }
}
