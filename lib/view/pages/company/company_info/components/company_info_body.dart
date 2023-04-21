import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';
import 'package:flutter_final_project_practice/view/components/my_info_inquiry.dart';
import 'package:flutter_final_project_practice/view/components/my_info_reservation.dart';
import 'package:flutter_final_project_practice/view/pages/company/company_info/components/company_info_contents.dart';

class CompanyInfoBody extends StatelessWidget {
  const CompanyInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CompanyInfoContents(),
              SizedBox(height: 40),
              MyInfoReservation(),
              SizedBox(height: 30),
            ],
          ),
        ),
        Divider(
          color: kBoarderColor,
          thickness: 11,
          height: 1,
        ),
        MyInfoInquiry(),
      ],
    );
  }
}
