import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/stadium/stadium_enroll/components/stadium_enroll_form.dart';

class StadiumEnrollBody extends StatelessWidget {

  StadiumEnrollBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: StadiumEnrollForm(),
        ),
      ],
    );
  }
}
