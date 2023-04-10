import 'package:flutter/material.dart';
import 'package:sporting_app/screen/sign_up.dart';
import 'package:sporting_app/view/common/constants.dart';

class JoinTerms extends StatelessWidget {
  const JoinTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 300,
              child: Column(
                children: [
                  _buildHeader(context),
                  _buildTermsCheckBox("1번 레이블을 입력해주세요."),
                  _buildTermsCheckBox("2번 레이블을 입력해주세요."),
                  _buildTermsCheckBox("3번 레이블을 입력해주세요."),
                  _buildTermsCheckBox("4번 레이블을 입력해주세요."),
                  _buildJoinButton(context),
                ],
              ),
            );
          },
          isScrollControlled: true,
        );
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(220, 40),
        backgroundColor: Colors.green,
      ),
      child: const Text(
        '회원가입',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }

  Row _buildHeader(BuildContext context) {
    return Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios,
                          color: kDarkIconColor),
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
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const sign()));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(220, 40),
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('회원가입'),
                );
  }

  Row _buildTermsCheckBox(String text) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (bool? value) {},
        ),
        Text(text, style: const TextStyle(color: kTextColor)),
      ],
    );
  }
}
