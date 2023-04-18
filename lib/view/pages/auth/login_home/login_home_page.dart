import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/auth/login_home/componunts/login_home_body.dart';

class LoginHomePage extends StatelessWidget {
  const LoginHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackGround(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: const LoginHomeBody(),
        ),
      ),
    );
  }

  BoxDecoration _buildBackGround() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/login.png'),
        fit: BoxFit.cover,
      ),
    );
  }


}
