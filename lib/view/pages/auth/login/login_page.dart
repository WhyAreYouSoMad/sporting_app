import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/auth/login/componunts/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackground(),
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: LoginBody(),
        ),
      ),
    );
  }

  BoxDecoration _buildBackground() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/reguster.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
