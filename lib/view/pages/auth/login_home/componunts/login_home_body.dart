import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/auth/login/login_page.dart';
import 'package:sporting_app/view/pages/auth/login_home/componunts/join_terms.dart';
import 'package:sporting_app/view/pages/auth/login_home/componunts/login_home_join_button.dart';
import 'package:sporting_app/view/pages/auth/login_home/componunts/login_logo.dart';
import 'package:sporting_app/view/pages/auth/login_home/componunts/oauth_buttons.dart';

class LoginHomeBody extends StatelessWidget {
  const LoginHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildLogo(),
        const Padding(
          padding: EdgeInsets.only(top: 120),
          child: Align(
            alignment: Alignment.center,
            child: OauthButtons(),
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(bottom: 130),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: LoginHomeJoinButton(),
          ),
        ),
        _buildLoginAndJoinButtons(context),
      ],
    );
  }

  Column _buildLoginAndJoinButtons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 130),
            child: Column(
              children: [
                _buildEmailLoginButton(context),
                const JoinTerms(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ElevatedButton _buildEmailLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginPage()));
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(220, 40),
        backgroundColor: Colors.green,
      ),
      child: const Text(
        '이메일 로그인',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return const Positioned(top: 20, child: LoginLogo());
  }
}
