import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_card_button.dart';

class MyInfoReservation extends StatelessWidget {
  const MyInfoReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "예약 내역",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        MyCardButton(
          icon: Icons.arrow_forward_ios,
          text: "내 예약",
          isIconFirst: false,
        ),
      ],
    );
  }
}
