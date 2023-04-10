import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/loginhome/login_home_page.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/my_button.dart';
import 'package:sporting_app/view/componunts/input_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/reguster.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              _buildHeader(context),
              const InputForm(hintText: "E-mail"),
              const InputForm(hintText: "Password"),
              const SizedBox(height: 20),
              const MyButton(text: "로그인"),
              _buildLoginUnderBar()
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildHeader(BuildContext context) {
    return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => MyLogin()));
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
              ),
            );
  }

  Row _buildLoginUnderBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildUnderBarButton("이메일 찾기"),
        _buildUnderBarButton("비밀번호 찾기"),
      ],
    );
  }

  TextButton _buildUnderBarButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: kTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
