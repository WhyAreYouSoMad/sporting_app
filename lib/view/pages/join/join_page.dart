import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/join/components/join_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _buildBackGround(),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: JoinBody(),
      ),
    );
  }

  BoxDecoration _buildBackGround() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/reguster.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
