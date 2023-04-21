import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/auth/email_login/components/email_login_form.dart';

class EmailLoginBody extends StatelessWidget {


  EmailLoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const SizedBox(height: 100),
          EmailLoginForm(),
        ],
      ),
    );
  }
}
