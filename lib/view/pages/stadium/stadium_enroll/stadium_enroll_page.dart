import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/stadium/stadium_enroll/components/stadium_enroll_body.dart';

class StadiumEnrollPage extends StatelessWidget {
  const StadiumEnrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: kDarkIconColor),
        ),
        title: const Text("경기장 등록", style: TextStyle(color: kTextColor)),
      ),
      body: StadiumEnrollBody(),
    );
  }
}
