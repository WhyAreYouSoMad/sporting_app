import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_card.dart';

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
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            _areaCalender(),
            _sportList(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Divider(thickness: 1),
                  _buildSubtitle(),
                  const StadiumListCard(
                      price: "2,200,000",
                      stadiumName: "사직 야구장",
                      location: "광안리해수욕장 도보 10분",
                      stadiumPic: "assets/baseballpark.jpg"),
                  const StadiumListCard(
                      price: "2,200,000",
                      stadiumName: "사직 야구장",
                      location: "광안리해수욕장 도보 10분",
                      stadiumPic: "assets/baseballpark.jpg"),
                  const StadiumListCard(
                      price: "2,200,000",
                      stadiumName: "사직 야구장",
                      location: "광안리해수욕장 도보 10분",
                      stadiumPic: "assets/baseballpark.jpg"),
                  const StadiumListCard(
                      price: "2,200,000",
                      stadiumName: "사직 야구장",
                      location: "광안리해수욕장 도보 10분",
                      stadiumPic: "assets/baseballpark.jpg"),
                  const StadiumListCard(
                      price: "2,200,000",
                      stadiumName: "사직 야구장",
                      location: "광안리해수욕장 도보 10분",
                      stadiumPic: "assets/baseballpark.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildSubtitle() {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sporting List",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _sportList() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      pinned: false,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        title: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/Baseball.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/Golf.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/Bowling.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/Soccer.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/Tennis.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/daon.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/Basketball.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                height: 40,
                width: 80,
                child: Image.asset(
                  "assets/Tabletennis.png",
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
    );
  }

  SliverAppBar _areaCalender() {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      expandedHeight: 70,
      pinned: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: kGrayColor, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 5),
                        Icon(Icons.location_on_outlined, size: 16),
                        SizedBox(width: 2),
                        Text(
                          "부산(북구)",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 7)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: kGrayColor, width: 1),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 8),
                        Image.asset("assets/calen.png", width: 15, height: 15),
                        SizedBox(width: 5),
                        Text(
                          "04.17 ~ 04.18",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
