import 'package:flutter/material.dart';
import 'package:sporting_app/common/componunts/info_inquiry.dart';
import 'package:sporting_app/common/componunts/info_reservation_tab.dart';
import 'package:sporting_app/common/componunts/sliver_divider.dart';
import 'package:sporting_app/view/pages/company/company_info/componunts/company_info_main_content.dart';

class CompanyInfoBody extends StatelessWidget {
  const CompanyInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CompanyInfoMainContent(),
        InfoReservationTab(),
        SliverDivider(topPadding: 20),
        InfoInquiry(),
        SliverDivider(topPadding: 20),
      ],
    );
  }
}
