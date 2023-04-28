
import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/auth/email_login/email_login_page.dart';
import 'package:sporting_app/view/pages/auth/join/join_page.dart';
import 'package:sporting_app/view/pages/auth/login/login_page.dart';
import 'package:sporting_app/view/pages/company/company_info_update/company_info_update_page.dart';
import 'package:sporting_app/view/pages/main/main_holder/main_holder.dart';
import 'package:sporting_app/view/pages/player/player_info_update/player_info_update_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_enroll/stadium_enroll_page.dart';

class MyRoute {

  static String loginPage = "/login";
  static String emailLoginPage = "/login/email";
  static String joinPage = "/join";
  static String mainPage = "/main";
  static String stadiumEnrollPage = '/stadium/enroll';
  static String companyInfoUpdatePage = '/company/Info/update';
  static String playerInfoUpdatePage = '/player/info/update';

}

Map<String, Widget Function(BuildContext)> getRouter() {

  return {
    MyRoute.loginPage: (context) => LoginPage(),
    MyRoute.emailLoginPage: (context) => EmailLoginPage(),
    MyRoute.joinPage: (context) => JoinPage(),
    MyRoute.mainPage: (context) => MainHolder(),
    MyRoute.stadiumEnrollPage: (context) => StadiumEnrollPage(),
    MyRoute.companyInfoUpdatePage: (context) => CompanyInfoUpdatePage(),
    MyRoute.playerInfoUpdatePage: (context) => PlayerInfoUpdatePage(),
  };

}