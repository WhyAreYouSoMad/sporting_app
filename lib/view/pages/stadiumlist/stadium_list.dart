import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:flutter/cupertino.dart';

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
            _area_calender(),
            _sport_list(),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Divider(thickness: 1),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sporting List", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                        ],
                      ),
                    ),
                  ),
                  _sport_list_view(),
                  _sport_list_view(),
                  _sport_list_view(),
                  _sport_list_view(),
                  _sport_list_view(),
                  _sport_list_view(),
                  _sport_list_view(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _sport_list_view() {
    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                child: Stack(
                                  children: [
                                    Image.asset("assets/baseballpark.jpg"),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        height: 30,
                                        width: 400,
                                        padding: EdgeInsets.all(8.0),
                                        color: Colors.black.withOpacity(0.5),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Icon(Icons.location_on_sharp, color: kWhiteColor,
                                            size: 13),
                                            SizedBox(width: 5),
                                            Text("광안리해수욕장 도보 10 분", style: TextStyle(
                                              fontSize: 10,
                                              color: kWhiteColor,
                                              fontWeight: FontWeight.bold,
                                            ),)
                                          ],
                                        ),
                                        ),
                                      ),
                                    Positioned(
                                      top: 0,
                                      left: 20,
                                      child: Container(
                                        height: 80,
                                        width: 70,
                                        padding: EdgeInsets.only(top: 5, left: 5),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [Color(0xFFFF6666), Color(0xFFFF9933), Color(0xFFFFFF99)],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          )
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("경기임박", style: TextStyle(fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white),
                                            ),
                                            SizedBox(height: 5),
                                            Text("오늘마감", style: TextStyle(fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.white),
                                              textAlign: TextAlign.start,
                                            ),
                                            Text("남은 인원 3 명", style: TextStyle(fontWeight: FontWeight.bold,
                                                fontSize: 10,
                                                color: Colors.white),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("사직 야구장", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.start,),
                                    RatingStar(
                                      rating: 4.5,
                                      reviewCount: 4800,
                                    ),
                                    SizedBox(height: 7),
                                    Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFF3366),
                                          ),
                                          child: Column(
                                            children: [
                                              Text("남은 인원",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: kWhiteColor,
                                              ),),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 20,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            color: kWhiteColor,
                                            border: Border(
                                              top: BorderSide(color: Color(0xFFFF3366),
                                              width: 1),
                                              right: BorderSide(color: Color(0xFFFF3366),
                                                  width: 1),
                                              bottom: BorderSide(color: Color(0xFFFF3366),
                                                  width: 1),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Text("오늘마감", style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFFF3366),
                                              ),),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("대관 | 2시간", style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: kGrayColor,
                                        ),),
                                        SizedBox(width: 10),
                                        Text("2,200,000 원", style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
  }

  SliverAppBar _sport_list() {
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
              child: Container(
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
              child: Container(
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
              child: Container(
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
              child: Container(
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
              child: Container(
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
              child: Container(
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
              child: Container(
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
              child: Container(
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

  SliverAppBar _area_calender() {
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
