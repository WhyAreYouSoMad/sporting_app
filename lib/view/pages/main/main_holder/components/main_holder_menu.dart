import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/view/pages/company/company_info/company_info_page.dart';
import 'package:sporting_app/view/pages/dummy/recruitment/recruitment_page.dart';
import 'package:sporting_app/view/pages/main/map/map_page.dart';
import 'package:sporting_app/view/pages/main/region_list/region_list_page.dart';
import 'package:sporting_app/view/pages/player/player_info/player_info_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/stadium_list_page.dart';
import 'package:validators/validators.dart';

class MainHolderMenu extends StatelessWidget {
  const MainHolderMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close, color: kDarkIconColor, size: 30),
                    ),
                    Text("카테고리", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ],
                ),
                SizedBox(height: 30),
                Text("종목", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
                Divider(thickness: 1, color: kBlackColor),
                Row(
                  children: [
                    _sport(context),
                    SizedBox(width: 60),
                    _sport2(context),
                  ],
                ),
                Row(
                  children: [
                    _sport3(context),
                    SizedBox(width: 60),
                    _sport4(context),
                  ],
                ),
                Row(
                  children: [
                    _sport5(context),
                    SizedBox(width: 60),
                    _sport6(context),
                  ],
                ),
                Row(
                  children: [
                    _sport7(context),
                    SizedBox(width: 60),
                    _sport8(context),
                  ],
                ),
                SizedBox(height: 30),
                Text("공지사항", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),),
                Divider(thickness: 1, color: Colors.black),
                Text("[공지] Sporting 앱이 리뉴얼되었어요 🥰"),
                SizedBox(height: 10),
                Text("[안내] 4월 이벤트에 참여하세요!"),
                SizedBox(height: 10),
                Text("[안내] 서비스 점검 사전 안내"),
                SizedBox(height: 10),
                Text("[안내] 실내 마스크 착용 의무 조정에 따른 안내"),
                SizedBox(height: 30),
                Text("서비스", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),),
                Divider(thickness: 1, color: kBlackColor),
                Row(
                  children: [
                    _map(context),
                    SizedBox(width: 60),
                    _area(context),
                  ],

                ),
                Row(
                  children: [
                    _mypage(context),
                    SizedBox(width: 60),
                    _recommendation(context),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded _recommendation(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => RecruitmentPage()));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("추천 경기장", style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)

              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }

  Expanded _map(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => MapPage()));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("지도", style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)

              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }

  Expanded _area(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => RegionListPage()));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("지역검색", style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }

  Expanded _mypage(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return equals(userRole, 'COMPANY') ? CompanyInfoPage() : PlayerInfoPage();
          } ));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("내정보", style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }

  Expanded _sport(BuildContext context) {
    return Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "농구")));
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("농구", style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(thickness: 1, height: 0)
                        ],
                      ),
                    ),
                  );
  }
  Expanded _sport2(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "야구")));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("야구", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }
  Expanded _sport3(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "축구")));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("축구", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }
  Expanded _sport4(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "테니스")));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("테니스", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }
  Expanded _sport5(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "탁구")));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("탁구", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }
  Expanded _sport6(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "당구")));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("당구", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }
  Expanded _sport7(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "볼링")));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("볼링", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }
  Expanded _sport8(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => StadiumListPage(sportName: "골프")));
        },
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("골프", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Icon(Icons.arrow_forward_ios, size: 13, color: kGrayColor)
              ],
            ),
            SizedBox(height: 10),
            Divider(thickness: 1, height: 0)
          ],
        ),
      ),
    );
  }
}
