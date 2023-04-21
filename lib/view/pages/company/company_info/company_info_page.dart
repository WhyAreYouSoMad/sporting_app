import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/company/company_info/components/company_info_body.dart';

class CompanyInfoPage extends StatelessWidget {
  const CompanyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompanyInfoBody(),
    );
  }
}