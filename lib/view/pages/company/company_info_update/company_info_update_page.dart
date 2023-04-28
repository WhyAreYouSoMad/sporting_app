import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';

import 'components/company_info_update_body.dart';

class CompanyInfoUpdatePage extends StatelessWidget {
  const CompanyInfoUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _companyInfoUpdateAppbar(context),
        body: CompanyInfoUpdateBody(),
      ),
    );
  }

  AppBar _companyInfoUpdateAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kBlackColor,
          size: 30,
        ),
      ),
      title: const Text(
        "내 정보 관리",
        style: TextStyle(
          color: kBlackColor,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }
}
