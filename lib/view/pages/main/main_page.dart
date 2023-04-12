import 'dart:async';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/loginhome/login_home_page.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/pages/main/componunts/big_news_tab.dart';
import 'package:sporting_app/view/pages/main/componunts/event_category.dart';
import 'package:sporting_app/view/pages/main/componunts/mini_news_list.dart';
import 'package:sporting_app/view/pages/main/componunts/mini_news_tab.dart';
import 'package:sporting_app/view/pages/main/componunts/recommend_stadium_list.dart';
import 'package:sporting_app/view/pages/main/componunts/recommend_stadium_title.dart';
import 'package:sporting_app/view/pages/main/componunts/sliver_divider.dart';
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
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [],
      ),
    );
  }

  Widget _buildPageWidget1(int pageIndex) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [],
      ),
    );
  }

  Widget _buildPageWidget2(int pageIndex) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [
          const SportsCategory(),
          _ImgSliverToBoxAdapter(),
          const EventCategory(),
          const SliverDivider(),
          const RecommendStadiumTitle(),
          const RecommendStadiumList(),
          const SliverDivider(topPadding: 20),
          const BigNewsTab(
            title: "UCL 8강에서 만난 우승 후보 팀들 간의 맞대결!",
            subtitle: "'펩과 투헬 격돌'...맨시티vs뮌헨 \n 선발 공개[UCL 라인업]",
            image: "assets/news1.jpg",
          ),
          const MiniNewsList(),
        ],
      ),
    );
  }

  Widget _buildPageWidget3(int pageIndex) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [],
      ),
    );
  }

  Widget _buildPageWidget4(int pageIndex) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: CustomScrollView(
        slivers: [],
      ),
    );
  }

  SliverToBoxAdapter _news2() {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: 140,
        height: 170,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            MiniNewsTab(title: "6년 만의 WBC, 한국대표팀 \n일정은? 한일전은..", image: "assets/wbc.jpg"),
            MiniNewsTab(title: "네덜란드 축구 대표팀 \n  카타르 월드컵 명단.", image: "assets/Netherland.jpg"),
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
                        child:
                            Image.asset("assets/news4.jpg", fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "17년 만의 금메달을 위해.. \n탁구 대표팀 '실전연습'",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    )
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
                          child: Image.asset("assets/news3.jpg",
                              fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        "여자 배구 김연경 20득점 \n도미니카 꺾고 '8강'",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      )
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

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => MainPage()));
    });
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
