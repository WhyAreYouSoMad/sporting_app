import 'package:flutter/material.dart';

class OauthButton extends StatelessWidget {
  const OauthButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            alignment: Alignment.center,
            onPressed: () {},
            icon: Image.asset('assets/google.png'),
            iconSize: 50,
          ),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/kak.png'),
            iconSize: 50,
          ),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/naver.png'),
            iconSize: 50,
          ),
        ],
      ),
    );
  }
}
