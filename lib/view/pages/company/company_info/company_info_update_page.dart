import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/company/company_info/company_info_udate/company_info_body.dart';


class CompanyInfoUpdatePage extends StatelessWidget {
  const CompanyInfoUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _company_info_update_appbar(context),
      body: CompanyInfoBody(),
    ));
  }

  AppBar _company_info_update_appbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: kBlackColor,
          size: 30,
        ),
      ),
      title: Text("내 정보 관리", style: TextStyle(
        color: kBlackColor,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      ),
    );
  }
}
