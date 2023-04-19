import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/rating_star.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_favoritebutton.dart';

class StadiumListDetail extends StatefulWidget {
  StadiumListDetail({Key? key}) : super(key: key);

  @override
  State<StadiumListDetail> createState() => _StadiumListDetailState();
}

class _StadiumListDetailState extends State<StadiumListDetail> {
  final bool _isChecked = true;
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _detailAppbar(context),
          body: CustomScrollView(
            slivers: [
              _detailImg(),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _detail(),
                      _divider(),
                      _Favorite(),
                      _divider(),
                      _Reservation(),
                      _buildCoteListView(count: 3),
                    ],
                  ),
                ), // Divider(thickness: 3)
              ])),
            ],
          )),
    );
  }

  Column _buildCoteListView({required int count}) {
    return Column(
      children: List.generate(count, (index) {
        return _coteList();
      }),
    );
  }

  Container _coteList() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/as1.jpg"),
            SizedBox(height: 10),
            Text(
              "1번 코트",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "넓고 깨끗한 코트",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Text(
                  "최대 30인 수용",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1시간 대여",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "2,000,000 원",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            _butten(),
            Divider(thickness: 1),
            Container(
              height: 100,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _count(),
                  _count(),
                  _count(),
                  _count(),
                  _count(),
                  _count(),
                ],
              ),
            ),
            Divider(thickness: 1),
          ],
        ),
      ),
    );
  }

  Container _butten() {
    return Container(
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 250, top: 10),
          child: InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 40,
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    "예약하기",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column _cote() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
              height: 200,
              width: 200,
              child: Image.asset(
                "assets/baseballpark.jpg",
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1번 코트",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  RatingStar(
                    rating: 5,
                    reviewCount: 200,
                  )
                ],
              ),
              SizedBox(width: 20),
              Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {});
                  })
            ],
          ),
        ),
      ],
    );
  }

  Padding _detail() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "사직 야구장",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text("부산 광역시 동래구 사직로 45"),
          RatingStar(
            reviewCount: 1800,
            rating: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.price_change,
                size: 22,
              ),
              Text(
                " 2,000,000 원",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _Favorite() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "경기장 찜하기",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          FavoriteButton(),
        ],
      ),
    );
  }

  Padding _Reservation() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "예약 일시",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Card(
            shadowColor: kGrayColor,
            child: InkWell(
              onTap: () async {
                final DateTime picked = await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/login.png"),
                            fit: BoxFit.cover,
                          )
                        ),
                        height: 700,
                        child: DatePickerDialog(

                          initialDate: selectedDate,
                          firstDate: DateTime.now().subtract(
                            Duration(days: 3600),
                          ),
                          lastDate: DateTime.now().add(Duration(days: 365)),
                        ),
                      ),
                    );
                  },
                );

                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.calendar_month),
                        SizedBox(width: 10),
                        Text(
                            "${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
                    ]),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.orange),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _divider() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Divider(thickness: 10, height: 0),
    );
  }

  Container _count() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Card(
              borderOnForeground: false,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.orange, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orange,
                      ),
                      width: 80,
                      height: 35,
                      // color: Colors.orange,
                      child: Center(
                          child: Text(
                        "오전 10:00",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      height: 24,
                      width: 80,
                      child: Center(
                          child: Text(
                        "남은 자리 2",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _detailImg() {
    return SliverToBoxAdapter(
      child: Container(
        height: 250,
        width: double.infinity,
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset(
              "assets/baseballpark.jpg",
              fit: BoxFit.cover,
            ),
            Image.asset("assets/as1.jpg", fit: BoxFit.cover),
            Image.asset("assets/sa.jpg", fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }

  AppBar _detailAppbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kWhiteColor,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      elevation: 2,
      title: Text(
        "사직야구장",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.home, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart, color: Colors.black),
        ),
      ],
    );
  }
}
