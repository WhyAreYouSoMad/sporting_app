import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/components/company_stadium_list_body.dart';

class CompanyStadiumListPage extends ConsumerWidget {
  const CompanyStadiumListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {



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
          '내 경기장 관리',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
        ),
      ),
      body: CompanyStadiumListBody(),
    );
  }
}
