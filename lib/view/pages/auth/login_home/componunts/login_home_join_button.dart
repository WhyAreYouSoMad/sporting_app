import 'package:flutter/material.dart';
import 'package:sporting_app/common/componunts/my_button.dart';
import 'package:sporting_app/common/componunts/term_check_box.dart';
import 'package:sporting_app/common/constants.dart';
import 'package:sporting_app/view/pages/auth/join/join_page.dart';

class LoginHomeJoinButton extends StatelessWidget {
  const LoginHomeJoinButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyButton(
      funButton: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 300,
              child: Column(
                children: [
                  _buildHeader(context),
                  const TermCheckBox(text: "1번 레이블을 입력해주세요."),
                  const TermCheckBox(text: "2번 레이블을 입력해주세요."),
                  const TermCheckBox(text: "3번 레이블을 입력해주세요."),
                  const TermCheckBox(text: "4번 레이블을 입력해주세요."),
                  _buildJoinButton(context),
                ],
              ),
            );
          },
          isScrollControlled: true,
        );
      },
      width: 220,
      height: 40,
      text: '회원가입',
      fontWeight: FontWeight.bold,
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: kDarkIconColor),
        ),
        const SizedBox(width: 130),
        const Text(
          '약관동의',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  ElevatedButton _buildJoinButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const JoinPage()));
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(220, 40),
        backgroundColor: Colors.green,
      ),
      child: const Text('회원가입'),
    );
  }
}
