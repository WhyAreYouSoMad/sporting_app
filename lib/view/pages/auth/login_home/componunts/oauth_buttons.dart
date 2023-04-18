import 'package:flutter/material.dart';
import 'package:sporting_app/common/componunts/my_button.dart';

class OauthButtons extends StatelessWidget {
  const OauthButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyButton(
          funButton: () {},
          image: 'assets/google.png',
          imageSize: 50,
        ),
        const SizedBox(width: 20),
        MyButton(
          funButton: () {},
          image: 'assets/kak.png',
          imageSize: 50,
        ),
        const SizedBox(width: 20),
        MyButton(
          funButton: () {},
          image: 'assets/naver.png',
          imageSize: 50,
        ),
      ],
    );
  }
}
