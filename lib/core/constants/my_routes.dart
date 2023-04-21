
import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/auth/email_login/email_login_page.dart';
import 'package:flutter_final_project_practice/view/pages/auth/join/join_page.dart';
import 'package:flutter_final_project_practice/view/pages/auth/login/login_page.dart';
import 'package:flutter_final_project_practice/view/pages/company/company_info/company_info_page.dart';
import 'package:flutter_final_project_practice/view/pages/main/main_holder/main_holder.dart';
import 'package:flutter_final_project_practice/view/pages/stadium/stadium_enroll/stadium_enroll_page.dart';

class MyRoute {

  static String loginPage = "/login";
  static String emailLoginPage = "/login/email";
  static String joinPage = "/join";
  static String mainPage = "/main";
  static String stadiumEnrollPage = '/stadium/enroll';
  static String companyInfo = '/company/Info';

}

Map<String, Widget Function(BuildContext)> getRouter() {

  return {
    MyRoute.loginPage: (context) => LoginPage(),
    MyRoute.emailLoginPage: (context) => EmailLoginPage(),
    MyRoute.joinPage: (context) => JoinPage(),
    MyRoute.mainPage: (context) => MainHolder(),
    MyRoute.stadiumEnrollPage: (context) => StadiumEnrollPage(),
    MyRoute.companyInfo: (context) => CompanyInfoPage(),
  };

}