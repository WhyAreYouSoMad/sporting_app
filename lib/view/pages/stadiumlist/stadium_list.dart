import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/rating_star.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_card.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_detail.dart';

import '../../componunts/rating_star.dart';

class StadiumList extends StatefulWidget {
  final String sportName;

  const StadiumList(this.sportName, {Key? key}) : super(key: key);

  @override
  State<StadiumList> createState() => _StadiumListState();
}

class _StadiumListState extends State<StadiumList> {
  DateTime selectedDate =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.infinity,
        color: kPrimaryColor,
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> StadiumListDetail()));
              },
              child: StadiumListCard(
                image: "assets/billiardhall.jpg",
                price: "60,000",
                stadiumName: "테니스장",
              ),
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
        centerTitle: true,
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
        icon: const Icon(Icons.arrow_back_ios_new, color: kDarkIconColor),
      ),
      title: Text(
        widget.sportName,
        style: const TextStyle(color: kBlackColor, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('main_page');
          },
          icon: const Icon(Icons.home, color: kDarkIconColor),
        ),
      ],
    );
    AppBar(
      backgroundColor: kBlackColor,
    );
  }
}
