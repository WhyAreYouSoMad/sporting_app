import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/rating_star.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_card.dart';

class StadiumList extends StatelessWidget {
  final String sportName;

  const StadiumList(this.sportName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.infinity,
        color: kPrimaryColor,
        child: ListView(
          children: const [
            StadiumListCard(
              image: "assets/billiardhall.jpg",
              price: "60,000",
              stadiumName: "테니스장",
            ),
            StadiumListCard(
              image: "assets/billiardhall.jpg",
              price: "60,000",
              stadiumName: "테니스장",
            ),
            StadiumListCard(
              image: "assets/billiardhall.jpg",
              price: "60,000",
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
      title: Text(sportName, style: const TextStyle(color: kBlackColor)),
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
