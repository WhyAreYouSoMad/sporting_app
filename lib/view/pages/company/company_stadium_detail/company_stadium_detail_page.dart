import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/companents/company_stadium_detail_body.dart';

class CompanyStadiumDetailPage extends StatelessWidget {
  const CompanyStadiumDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MyButton(
          funButton: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_ios,
          iconColor: kDarkIconColor,
          iconSize: 30,
        ),
        title: const Text(
          '경기장 정보 수정',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
        ),
      ),
      body: CompanyStadiumDetailBody(),
    );
  }
}
