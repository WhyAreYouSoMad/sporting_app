import 'package:flutter/material.dart';
import 'package:sporting_app/common/componunts/my_button.dart';
import 'package:sporting_app/common/componunts/my_text_form_field.dart';
import 'package:sporting_app/view/pages/auth/login/components/login_header.dart';
import 'package:sporting_app/view/pages/auth/login/components/login_under_bar.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: LoginHeader(),
        ),
        const MyTextFormField(hintText: "E-mail"),
        const MyTextFormField(hintText: "Password"),
        const SizedBox(height: 20),
        MyButton(text: "로그인", funButton: () {}),
        const LoginUnderBar(),
      ],
    );
  }
}
