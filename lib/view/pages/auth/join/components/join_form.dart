import 'package:flutter/material.dart';
import 'package:sporting_app/core/utils/my_validate_util.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/components/my_text_form_field.dart';

class JoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  JoinForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyTextFormField(
            hint: 'Email',
            funValidator: validateEmail(),
            obscureText: false,
            controller: _email,
          ),
          const SizedBox(height: 30),
          MyTextFormField(
            hint: 'Password',
            funValidator: validatePassword(),
            obscureText: true,
            controller: _password,
          ),
          const SizedBox(height: 300),
          MyButton(
            funButton: () {},
            text: '회원가입',
            height: 50,
            width: 400,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
