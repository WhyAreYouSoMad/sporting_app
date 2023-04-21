import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';

class OauthButtons extends StatelessWidget {
  const OauthButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyButton(
          funButton: () {},
          image: 'assets/images/oauth/google.png',
          imageSize: 50,
        ),
        const SizedBox(width: 20),
        MyButton(
          funButton: () {},
          image: 'assets/images/oauth/kakao.png',
          imageSize: 50,
        ),
        const SizedBox(width: 20),
        MyButton(
          funButton: () {},
          image: 'assets/images/oauth/naver.png',
          imageSize: 50,
        ),
      ],
    );
  }
}
