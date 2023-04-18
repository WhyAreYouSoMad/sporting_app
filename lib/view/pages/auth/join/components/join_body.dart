import 'package:flutter/material.dart';
import 'package:sporting_app/common/componunts/my_button.dart';
import 'package:sporting_app/common/componunts/my_text_form_field.dart';
import 'package:sporting_app/view/pages/auth/join/components/join_header.dart';

class JoinBody extends StatelessWidget {
  const JoinBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: JoinHeader(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 40, left: 40),
            child: MyTextFormField(hintText: "E-mail"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 40, left: 40),
            child: MyTextFormField(hintText: "Password"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 40, left: 40),
            child: MyTextFormField(hintText: "Confirm Password"),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 30),
              child: MyButton(
                text: "회원가입 완료",
                funButton: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
