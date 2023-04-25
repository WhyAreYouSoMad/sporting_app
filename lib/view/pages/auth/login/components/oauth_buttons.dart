import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/main/main_holder/main_holder.dart';

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
          funButton: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> MainHolder()));
          },
          image: 'assets/images/oauth/naver.png',
          imageSize: 50,
        ),
      ],
    );
  }
}
