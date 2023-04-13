import 'dart:async';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/loginhome/login_home_page.dart';
import 'package:sporting_app/view/common/constants.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Timer? timer;
  PageController pageController = PageController(initialPage: 0);
  int imgcurrentIndex = 0;

  //
  // @override
  // void initState() {
  //   super.initState();
  //   timer = Timer.periodic(Duration(seconds: 4), (timer) {
  //     int nextPage = (imgcurrentIndex + 1) % 4;
  //     setState(() {
  //       imgcurrentIndex = nextPage;
  //       pageController.animateTo(imgcurrentIndex * 400.0,
  //           duration: Duration(milliseconds: 500), curve: Curves.linear);
  //     });
  //   });
  // }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
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
          _TopIconSliverGrid(),
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
        slivers: [
          _MyPro(),
          _Reservation(),
          _Divider(),
          _Inquiry(),
          _DividerInquiry(),
        ],
      ),
    );
  }

  SliverList _Inquiry() {
    return SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Container(
              child: Column(
                children: [
                  InkWell(
                    onTap:() {},
                    child: Container(
                      height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("assets/CustomerService.png"),
                                      SizedBox(width: 10),
                                      Text("고객센터", style: TextStyle(
                                        fontSize: 18,
                                      ),),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("365일 오전 9시 ~ 익일 오전 3시 운영", style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),),
                                      Icon(Icons.arrow_forward_ios, size: 16,),
                                    ],
                                  )
                                ],
                              ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("카카오톡 1:1 문의", style: TextStyle(
                                fontSize: 18,

                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_ios, size: 16,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }

  SliverList _Divider() {
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
  SliverList _DividerInquiry() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Padding(
            padding: const EdgeInsets.only(top: 0),
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

  SliverList _Reservation() {
    return SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 18, right: 18,),
            child: Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("예약 내역", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ],
                  ),
                  Column(

                    children: [
                      Card(
                        elevation: 2,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),

                              border: Border.all(
                                color: kGrayColor,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("근처 경기",style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Icon(Icons.arrow_forward_ios, size: 16,)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: kGrayColor,
                              width: 1
                            ),

                          ),
                          child: Column(
                            children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("구장 여행",style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                          ),),
                                          Icon(Icons.arrow_forward_ios,size: 15),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                               Divider(thickness: 1,
                               height: 0,),
                               InkWell(
                                 onTap: () {},
                                 child: Container(
                                   height: 40,
                                   child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                          Text("구장 보험", style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Icon(Icons.arrow_forward_ios, size: 15),
                                        ],
                                      ),
                                   ),
                                 ),
                               ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]));
  }

  SliverToBoxAdapter _MyPro() {
    return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 3,
              child: Container(
                height: 305,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kGrayColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset("assets/man.png",
                                          width: 40, height: 40)),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        "바티칸함수명",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              "내정보 관리",
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                            ),
                                            Icon(Icons.arrow_forward_ios, size: 13),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text("MY 헤택"),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:
                                            BorderSide(color: Colors.blue, width: 1),
                                      ),
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    InkWell(
                      onTap: () {},
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              border: Border(
                              )
                            ),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/pointt.png",
                                          width: 40,
                                          height: 40,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "포인트",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Num",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Expanded(
                          child: Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Image.asset("assets/coin.png", width: 40, height: 40),
                                    SizedBox(width: 5),
                                    Text(
                                      "Sproting Coin",
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ]),
                                  Row(
                                    children: [
                                      Text(
                                        "계정연동 후 사용하세요",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ],
                              ),

                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Expanded(
                          child: Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("assets/coopon.png", width: 40, height: 40),
                                      SizedBox(width: 5),
                                      Text("쿠폰함", style: TextStyle(
                                        fontSize: 20,
                                      ),),
                                      SizedBox(width: 5),
                                      Text("소멸예정 쿠폰이 있어요!", style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 13
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Num", style: TextStyle(
                                            fontSize: 20,
                                          ),),
                                          SizedBox(width: 5),
                                          Icon(Icons.arrow_forward_ios, size: 18)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),

                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 3),
                      child: Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset("assets/sns.png",width: 40, height: 40),
                                              SizedBox(width: 5),
                                              Text("나의 후기", style: TextStyle(
                                                fontSize: 20
                                              ),),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.arrow_forward_ios, size: 18)
                                            ],
                                          ),
                                        ],
                                      ),

                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset("assets/her.png", width: 40, height: 30),
                                              SizedBox(width: 5),
                                              Text("찜", style: TextStyle(
                                                fontSize: 20,
                                              ),),
                                            ],
                                          ),
                                          SizedBox(width: 5),
                                          Row(children: [
                                            Icon(Icons.arrow_forward_ios, size: 18)
                                          ]),
                                        ],
                                      ),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],

                ),
              ),
            ),
          ),
        );
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
                        child: Image.asset("assets/wbc.jpg", fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "6년 만의 WBC, 한국대표팀 \n일정은? 한일전은..",
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
                          child: Image.asset("assets/Netherland.jpg",
                              fit: BoxFit.cover),
                        ),
                      ),
                      Text(
                        "네덜란드 축구 대표팀 \n  카타르 월드컵 명단.",
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
                  padding: const EdgeInsets.only(left: 22),
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
    return _Divider();
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

  SliverGrid _TopIconSliverGrid() {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Tennis.png"),
              iconSize: 40,
            ),
            Text(
              "테니스",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Baseball.png"),
              iconSize: 40,
            ),
            Text(
              "야구",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Bowling.png"),
              iconSize: 40,
            ),
            Text(
              "볼링",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/daon.png"),
              iconSize: 40,
            ),
            Text(
              "당구",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Golf.png"),
              iconSize: 40,
            ),
            Text(
              "골프",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Soccer.png"),
              iconSize: 40,
            ),
            Text(
              "축구",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Tabletennis.png"),
              iconSize: 40,
            ),
            Text(
              "탁구",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/Basketball.png"),
              iconSize: 40,
            ),
            Text(
              "농구",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ]),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisSpacing: 0, crossAxisSpacing: 15),
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
    switch (currentIndex) {
      case 0:
        return AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text('First Page'),
        );
      case 1:
        return AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text('Second Page'),
        );
      case 2:
        return AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: _leadingButton(context),
          actions: [_actionButton(context)],
        );
      case 3:
        return AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text('4번 page'),
        );
      case 4:
        return AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            'My Sproting',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: kBlackColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_alert_sharp,
                color: kBlackColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart, color: kBlackColor),
            ),
          ],
        );
      default:
        return AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: _leadingButton(context),
          actions: [_actionButton(context)],
        );
    }
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
