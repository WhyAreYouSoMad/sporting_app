import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/auth/login/login_page.dart';
import 'package:sporting_app/view/pages/auth/login_home/componunts/join_terms.dart';
import 'package:sporting_app/view/pages/auth/login_home/componunts/login_logo.dart';

class LoginHomePage extends StatelessWidget {
  const LoginHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackGround(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Stack(
            children: [
              _buildLogo(),
              _buildOAuthButtons(),
              _buildLoginAndJoinButtons(context),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBackGround() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/login.png'),
        fit: BoxFit.cover,
      ),
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

  Widget _buildOAuthButtons() {
    return Padding(
      padding: const EdgeInsets.only(top: 120),
      child: Align(
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
      ),
    );
  }

  Widget _buildLogo() {
    return const Positioned(
      top: 20,
      child: LoginLogo()
    );
  }
}
