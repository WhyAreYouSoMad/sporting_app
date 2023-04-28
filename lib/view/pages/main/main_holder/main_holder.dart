import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/core/constants/my_dio.dart';
import 'package:sporting_app/core/constants/my_routes.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/company/company_info/company_info_page.dart';
import 'package:sporting_app/view/pages/main/main_holder/components/main_holder_menu.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sporting_app/view/pages/main/main_page/main_page.dart';
import 'package:sporting_app/view/pages/main/notice/notice.dart';
import 'package:sporting_app/view/pages/main/region_list/region_list_page.dart';
import 'package:sporting_app/view/pages/player/player_info/player_info_page.dart';
import 'package:validators/validators.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({Key? key}) : super(key: key);

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  final _pageController = PageController(initialPage: 2);
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        bottomNavigationBar: _buildNavigationBar(),
        body: _buildPages(),
      ),
    );
  }

  PageView _buildPages() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      children: [
        _notice(0),
        _regionListPage(1),
        _mainPage(2),
        _notice(3),
        equals(userRole, 'COMPANY') ? _companyInfo(4) : _playerInfoPage(4),
      ],
    );
  }

  Notice _notice(index) => const Notice();
  MainPage _mainPage(index) => const MainPage();
  CompanyInfoPage _companyInfo(index) => const CompanyInfoPage();
  PlayerInfoPage _playerInfoPage(index) => const PlayerInfoPage();
  RegionListPage _regionListPage(index) => const RegionListPage();

  CurvedNavigationBar _buildNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: kPrimaryColor,
      color: kWhiteColor,
      animationDuration: const Duration(milliseconds: 300),
      index: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
        });
      },
      items: [
         Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image.asset('assets/images/icons/maps.png',
              color: kLogoColor, height: 30, width: 30,),
        ),
         Padding(
          padding: EdgeInsets.only(top: 10),
           child: Image.asset('assets/images/icons/homeq.png', color: kLogoColor, height: 30, width: 30,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset('assets/images/logo/sporting.png', color: kLogoColor),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Image.asset('assets/images/icons/notification.png', color: kLogoColor, height: 30, width: 30,),
        ),
         Padding(
          padding: EdgeInsets.only(top: 10),
          child: Icon(Icons.person, color: kDarkIconColor, size: 35),
        ),
      ],
    );
  }


  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: MyButton(
        funButton: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return MainHolderMenu();
            },
            isScrollControlled: true,
          );
        },
        icon: Icons.menu,
      ),
      actions: [
        MyButton(
          funButton: () {
            Navigator.pushNamed(context, MyRoute.loginPage);
          },
          icon: Icons.bookmark,
        ),
      ],
    );
  }
}
