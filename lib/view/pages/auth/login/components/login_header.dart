import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';
import 'package:sporting_app/common/my_route.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, MyRoute.loginHomePage);
          },
          icon: const Icon(Icons.arrow_back_ios, color: kDarkIconColor),
          iconSize: 30,
        ),
        const Text(
          '로그인',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
