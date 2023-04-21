import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';
import 'package:sporting_app/view/pages/auth/login_home/login_home_page.dart';
import 'package:sporting_app/view/pages/player/main/main_page.dart';
import 'package:sporting_app/view/pages/player/player_info/player_info_page.dart';
import 'package:sporting_app/view/pages/region/resion_list/region_list_page.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({Key? key}) : super(key: key);

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  final PageController _pageController = PageController(initialPage: 2);
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: _buildNavigationBar(),
      body: _buildPages(),
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
        _page(0),
        _resionListPage(1),
        _mainPage(2),
        _page(3),
        _playerInfoPage(4),
      ],
    );
  }

  Widget _page(index) => const Placeholder();

  RegionListPage _resionListPage(index) => const RegionListPage();

  PlayerInfoPage _playerInfoPage(index) => const PlayerInfoPage();

  MainPage _mainPage(index) => const MainPage();

  CurvedNavigationBar _buildNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: Colors.greenAccent,
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
          padding: const EdgeInsets.only(top: 10),
          child: const Icon(Icons.map, color: kDarkIconColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: const Icon(Icons.sports_baseball, color: kDarkIconColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset('assets/sporting.png', color: kLogoColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.mail, color: kDarkIconColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.person, color: kDarkIconColor),
        ),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: kDarkIconColor, size: 30),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
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
            },
            isScrollControlled: true,
          );
        },
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => LoginHomePage()));
          },
          icon: const Icon(Icons.bookmark, color: kDarkIconColor, size: 30),
        ),
      ],
    );
  }
}