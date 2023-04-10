import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/input_form.dart';
import 'package:sporting_app/view/componunts/my_button.dart';

import '../loginhome/login_home_page.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackGround(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              _buildHeader(context),
              const InputForm(hintText: "E-mail"),
              const InputForm(hintText: "Password"),
              const InputForm(hintText: "Confirm Password"),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(bottom: 30),
                  child: const MyButton(text: "회원가입 완료"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MyLogin()));
            },
            icon: const Icon(Icons.arrow_back_ios, color: kDarkIconColor),
            iconSize: 40,
          ),
          const Text(
            '회원가입',
            style: TextStyle(
              color: kTextColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _buildBackGround() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/reguster.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
