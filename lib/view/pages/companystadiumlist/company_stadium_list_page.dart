import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/pages/companystadiumlist/componunts/company_stadium_list_card.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_card.dart';

class CompanyStadiumListPage extends StatelessWidget {
  const CompanyStadiumListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.infinity,
        color: kPrimaryColor,
        child: ListView(
          children: const [
            CompanyStadiumListCard(
              image: "assets/billiardhall.jpg",
              stadiumName: "테니스장",
            ),
            CompanyStadiumListCard(
              image: "assets/billiardhall.jpg",
              stadiumName: "테니스장",
            ),
            CompanyStadiumListCard(
              image: "assets/billiardhall.jpg",
              stadiumName: "테니스장",
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: kDarkIconColor),
      ),
      title: const Text("경기장 목록", style: TextStyle(color: kBlackColor)),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('main_page');
          },
          icon: const Icon(Icons.home, color: kDarkIconColor),
        )
      ],
    );
  }
}

