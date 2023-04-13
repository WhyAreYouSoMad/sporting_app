import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/pages/loginhome/login_home_page.dart';
import 'package:sporting_app/view/pages/main/componunts/banner_listview.dart';
import 'package:sporting_app/view/pages/main/componunts/big_news_tab.dart';
import 'package:sporting_app/view/pages/main/componunts/event_category.dart';
import 'package:sporting_app/view/pages/main/componunts/mini_news_list.dart';
import 'package:sporting_app/view/pages/main/componunts/recommend_stadium_list.dart';
import 'package:sporting_app/view/pages/main/componunts/recommend_stadium_title.dart';
import 'package:sporting_app/view/componunts/sliver_divider.dart';
import 'package:sporting_app/view/pages/main/componunts/sports_category.dart';

class MainPage extends StatelessWidget {

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SportsCategory(),
          BannerListview(),
          EventCategory(),
          SliverDivider(),
          RecommendStadiumTitle(),
          RecommendStadiumList(),
          SliverDivider(topPadding: 20),
          BigNewsTab(
            title: "UCL 8강에서 만난 우승 후보 팀들 간의 맞대결!",
            subtitle: "'펩과 투헬 격돌'...맨시티vs뮌헨 \n 선발 공개[UCL 라인업]",
            image: "assets/news1.jpg",
          ),
          MiniNewsList(),
        ],
      ),
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
                          icon:
                          const Icon(Icons.close, color: kDarkIconColor),
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
                .push(MaterialPageRoute(builder: (_) => MyLogin()));
          },
          icon: const Icon(Icons.bookmark, color: kDarkIconColor, size: 30),
        ),
      ],
    );
  }
  
}
