import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';

class LoginUnderBar extends StatelessWidget {
  const LoginUnderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildUnderBarButton("이메일 찾기", () {}),
        _buildUnderBarButton("비밀번호 찾기", () {}),
      ],
    );
  }

  Widget _buildUnderBarButton(String text, VoidCallback funEvent) {
    return TextButton(
      onPressed: funEvent,
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
