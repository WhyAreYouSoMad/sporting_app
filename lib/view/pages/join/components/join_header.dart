import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';
import 'package:sporting_app/view/pages/loginhome/login_home_page.dart';

class JoinHeader extends StatelessWidget {
  const JoinHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
