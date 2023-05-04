import 'package:flutter/material.dart';

class CompanyInfoUpdateForm extends StatelessWidget {
  final TextEditingController telCon;
  final TextEditingController passwordCon;
  final TextEditingController checkPasswordCon;
  final TextEditingController companyNumberCon;
  final passwordValidator;

  const CompanyInfoUpdateForm({Key? key, required this.passwordValidator, required this.companyNumberCon, required this.telCon, required this.passwordCon, required this.checkPasswordCon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_companyNumber(), _tel(), _password(), _checkPassword()],
    );
  }

  Widget _companyNumber() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text("사업자번호"),
        const SizedBox(width: 50),
        Expanded(
          child: TextFormField(
            controller: companyNumberCon,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(right: 10, left: 10),
            ),
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
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
            obscureText: true,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(right: 10, left: 10),
            ),
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _checkPassword() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text("비밀번호 확인"),
        const SizedBox(width: 33),
        Expanded(
          child: TextFormField(
            controller: checkPasswordCon,
            validator: passwordValidator,
            obscureText: true,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(right: 10, left: 10),
            ),
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _tel() {
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
}
