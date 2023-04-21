import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/auth/login/components/login_buttons.dart';
import 'package:sporting_app/view/pages/auth/login/components/login_logo.dart';
import 'package:sporting_app/view/pages/auth/login/components/oauth_buttons.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: LoginLogo(),
        ),
        OauthButtons(),
        SizedBox(height: 20),
        LoginButtons(),
      ],
    );
  }
}
