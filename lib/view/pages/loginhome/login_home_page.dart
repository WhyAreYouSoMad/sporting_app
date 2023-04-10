import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:sporting_app/screen/sign_up.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/pages/login/login_page.dart';
import 'package:sporting_app/view/pages/loginhome/componunts/join_terms.dart';
import 'package:sporting_app/view/pages/main/main_page.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackGround(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              _buildLogo(),
              _buildOAuthButtons(),
              _buildLoginAndJoinButtons(context),
              _buildHeader(context),
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
    return Positioned(
      top: 20,
      child: Container(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/sporting.png',
          width: 400,
          height: 400,
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: IconButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const MainPage()));
        },
        icon: const Icon(
          Icons.arrow_back,
          color: kWhiteIconColor,
        ),
      ),
    );
  }
}
