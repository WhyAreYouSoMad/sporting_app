import 'package:flutter/cupertino.dart';
import 'package:sporting_app/view/pages/auth/join/join_page.dart';
import 'package:sporting_app/view/pages/auth/login/login_page.dart';
import 'package:sporting_app/view/pages/auth/login_home/login_home_page.dart';
import 'package:sporting_app/view/pages/company/company_info/company_info_page.dart';
import 'package:sporting_app/view/pages/player/main/main_holder.dart';
import 'package:sporting_app/view/pages/player/player_info/player_info_page.dart';
import 'package:sporting_app/view/pages/region/resion_list/region_list_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_enroll/stadium_enroll_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/stadium_list.dart';

class MyRoute {

  static String mainPage = "/main";
  static String loginHomePage = "/loginHome";
  static String loginPage = "/login";
  static String joinPage = "/join";
  static String companyInfoPage = "/company/info";
  static String playerInfoPage = "/player/info";
  static String stadiumListPage = "/stadium/list";
  static String stadiumEnrollPage = "/stadium/enroll";
  static String regionListPage = "/stadium/region";

}

Map<String, Widget Function(BuildContext)> getRouter() {

  return {
    MyRoute.mainPage: (context) => MainHolder(),
    MyRoute.loginHomePage: (context) => LoginHomePage(),
    MyRoute.loginPage: (context) => LoginPage(),
    MyRoute.joinPage: (context) => JoinPage(),
    MyRoute.companyInfoPage: (context) => CompanyInfoPage(),
    MyRoute.playerInfoPage: (context) => PlayerInfoPage(),
    MyRoute.stadiumListPage: (context) => StadiumList("축구"),
    MyRoute.stadiumEnrollPage: (context) => StadiumEnrollPage(),
    MyRoute.regionListPage: (context) => RegionListPage(),

  };
}