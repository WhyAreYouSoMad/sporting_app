import 'dart:async';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/loginhome/login_home_page.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/pages/main/componunts/image_button.dart';
import 'package:sporting_app/view/pages/main/componunts/sports_category.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Timer? timer;
  PageController pageController = PageController(initialPage: 0);
  int imgcurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      int nextPage = (imgcurrentIndex + 1) % 4;
      setState(() {
        imgcurrentIndex = nextPage;
        pageController.animateTo(imgcurrentIndex * 400.0,
            duration: Duration(milliseconds: 500), curve: Curves.linear);
      });
    });
  }

  int currentIndex = 2;
  final PageController _pageController = PageController(initialPage: 2);

  // ..loadRequest(homeUrl);

  // controller: _pageController,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(context),
        bottomNavigationBar: _buildNavigationBar(),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: [
            _buildPageWidget0(0),
            _buildPageWidget1(1),
            _buildPageWidget2(2),
            _buildPageWidget3(3),
            _buildPageWidget4(4),
          ],
        ));
  }

  Widget _buildPageWidget0(int pageIndex) {
    return RefreshIndicator(onRefresh: _refreshData,
    child: CustomScrollView(
      slivers: [

      ],
    ),);
  }

  Widget _buildPageWidget1(int pageIndex) {
    return RefreshIndicator(onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [

        ],
      ),);
  }


  Widget _buildPageWidget2(int pageIndex) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [
          const SportsCategory(),
          _ImgSliverToBoxAdapter(),
          _CenterSliverPadding(),
          _DividersliverList(),
          _centerText(),
          _sportare(),
          _DividersliverList2(),
          _news(),
          _news2(),
          _DividersliverList2(),
          _news0(),
          _news3(),
        ],
      ),
    );
  }


  Widget _buildPageWidget3(int pageIndex) {
    return RefreshIndicator(onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [

        ],
      ),);
  }


  Widget _buildPageWidget4(int pageIndex) {
    return RefreshIndicator(onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [

        ],
      ),);
  }


  SliverToBoxAdapter _news2() {
    return SliverToBoxAdapter(
          child: Container(
            width: 140,
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            width: 175,
                            height: 100,
                            child: Image.asset("assets/wbc.jpg",fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("6년 만의 WBC, 한국대표팀 \n일정은? 한일전은..", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: 175,
                              height: 100,
                              child: Image.asset("assets/Netherland.jpg", fit: BoxFit.cover),
                            ),

                          ),
                          Text("네덜란드 축구 대표팀 \n  카타르 월드컵 명단.", style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }

  SliverToBoxAdapter _news3() {
    return SliverToBoxAdapter(
      child: Container(
        width: 140,
        height: 170,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        width: 175,
                        height: 100,
                        child: Image.asset("assets/news4.jpg",fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("17년 만의 금메달을 위해.. \n탁구 대표팀 '실전연습'", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Container(
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          width: 175,
                          height: 100,
                          child: Image.asset("assets/news3.jpg", fit: BoxFit.cover),
                        ),

                      ),
                      Text("여자 배구 김연경 20득점 \n도미니카 꺾고 '8강'", style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverList _news() {
    return SliverList(
        delegate: SliverChildListDelegate([
      Column(
        children: [
          SizedBox(height: 10),
          Text(
            "UCL 8강에서 만난 우승 후보 팀들 간의 맞대결!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {},
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      width: double.infinity,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          "assets/news1.jpg",
                          fit: BoxFit.fitWidth,
                        ),
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "'펩과 투헬 격돌'...맨시티vs뭰헨 \n 선발 공개[UCL 라인업]",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    ]));
  }

  SliverList _news0() {
    return SliverList(
        delegate: SliverChildListDelegate([
          Column(
            children: [
              SizedBox(height: 10),
              Text(
                "나달 '페더러는 완벽한 선수' : 스포츠뉴스",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              "assets/news6.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "'황제' 페더러 나달, 첫 '환상 복식조'",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ]));
  }

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
    });
  }

  SliverToBoxAdapter _sportare() {
    return SliverToBoxAdapter(
      child: Container(
        height: 180,
        width: 170,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child: Image.asset("assets/golfcourse.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "영도 골프장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("5.0"),
                        Text("(6,554)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "70,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child:
                            Image.asset("assets/Tennis.jpg", fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "사직 테니스장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("4.5"),
                        Text("(2,454)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "90,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child: Image.asset("assets/billiardhall.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "명지 당구장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("2.0"),
                        Text("(554)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "8,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child: Image.asset("assets/tabletennis.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "강원 탁구장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("5.0"),
                        Text("(16,554)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "7,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child: Image.asset("assets/bowlingalley.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "서면 볼링장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("4.0"),
                        Text("(4,154)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "70,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child: Image.asset("assets/baseballpark.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "사직 야구장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("5.0"),
                        Text("(116,554)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "30,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child: Image.asset("assets/basketballcourt.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "강남 농구장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("1.0"),
                        Text("(114)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "15,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        width: 170,
                        height: 110,
                        child: Image.asset("assets/soccerfield.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "잠실 축구장",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text("5.0"),
                        Text("(316,554)")
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 100),
                        Text(
                          "50,000",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Text("원")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _centerText() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "최근 본 경기와 연관된 경기",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 23,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "전체보기",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashFactory: NoSplash.splashFactory,
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverList _DividersliverList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Column(
            children: [
              Divider(
                color: Colors.grey[300],
                thickness: 11,
                height: 1,
              ),
            ],
          ),
        ],
      ),
    );
  }

  SliverList _DividersliverList2() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey[300],
                  thickness: 11,
                  height: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverPadding _CenterSliverPadding() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10),
      sliver: SliverGrid(
        delegate: SliverChildListDelegate([
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/google.png"),
                iconSize: 40,
              ),
              Text("몰루?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  )),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/google.png"),
                iconSize: 40,
              ),
              Text("몰루?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  )),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/google.png"),
                iconSize: 40,
              ),
              Text("몰루?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  )),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/google.png"),
                iconSize: 40,
              ),
              Text("몰루?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  )),
            ],
          ),
        ]),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      ),
    );
  }

  SliverToBoxAdapter _ImgSliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Container(
          height: 130,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: 400,
                  height: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/sport${index + 1}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                imgcurrentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: Colors.greenAccent,
      color: kWhiteColor,
      animationDuration: const Duration(milliseconds: 300),
      onTap: (index) {
        setState(() {
          currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeOut);
        });
      },
      index: currentIndex,
      items: [
        const Icon(Icons.map, color: kDarkIconColor),
        const Icon(Icons.sports_baseball, color: kDarkIconColor),
        Image.asset('assets/sporting.png', color: kLogoColor),
        const Icon(Icons.mail, color: kDarkIconColor),
        const Icon(Icons.person, color: kDarkIconColor),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: _leadingButton(context),
      actions: [_actionButton(context)],
    );
  }

  IconButton _actionButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => MyLogin()));
      },
      icon: const Icon(Icons.bookmark, color: kDarkIconColor, size: 30),
    );
  }

  IconButton _leadingButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu, color: kDarkIconColor, size: 30),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return _menuModal(context);
          },
          isScrollControlled: true,
        );
      },
    );
  }

  SafeArea _menuModal(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close, color: kDarkIconColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
