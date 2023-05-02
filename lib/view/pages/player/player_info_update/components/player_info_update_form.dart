import 'package:flutter/material.dart';

class PlayerInfoUpdateForm extends StatelessWidget {
  final TextEditingController telCon;
  final TextEditingController passwordCon;
  final TextEditingController checkPasswordCon;
  final passwordValidator;

  const PlayerInfoUpdateForm({
    Key? key,
    required this.telCon,
    required this.passwordCon,
    required this.checkPasswordCon,
    required this.passwordValidator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_email(), _tel(), _password(), _checkPassword()],
    );
  }

  Widget _password() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text("비밀번호"),
        const SizedBox(width: 63),
        Expanded(
          child: TextFormField(
            controller: passwordCon,
            validator: passwordValidator,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(right: 10, left: 10),
            ),
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  Row _checkPassword() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text("비밀번호 확인"),
        const SizedBox(width: 33),
        Expanded(
          child: TextFormField(
            controller: checkPasswordCon,
            validator: passwordValidator,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(right: 10, left: 10),
            ),
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  Row _tel() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text("휴대폰번호"),
        const SizedBox(width: 50),
        Expanded(
          child: TextFormField(
            controller: telCon,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  Row _email() {
    return const Row(
      children: [Text("이메일"), SizedBox(width: 88), Text("a0211a@naver.com")],
    );
  }
}
