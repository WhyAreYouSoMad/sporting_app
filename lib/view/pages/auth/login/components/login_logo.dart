import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo/sporting.png',
      width: 400,
      height: 400,
    );
  }
}
