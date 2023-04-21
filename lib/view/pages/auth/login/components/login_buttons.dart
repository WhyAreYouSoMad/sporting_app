import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_routes.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyButton(
          funButton: () {
            Navigator.pushNamed(context, MyRoute.emailLoginPage);
          },
          text: "이메일 로그인",
          width: 230,
          height: 40,
        ),
        const SizedBox(height: 10),
        MyButton(
          funButton: () {
            Navigator.pushNamed(context, MyRoute.joinPage);
          },
          text: "회원 가입",
          width: 230,
          height: 40,
        ),
      ],
    );
  }
}
