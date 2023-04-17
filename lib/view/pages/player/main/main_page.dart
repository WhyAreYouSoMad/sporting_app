import 'package:flutter/material.dart';
import 'package:sporting_app/common/componunts/sliver_divider.dart';
import 'package:sporting_app/view/pages/player/main/componunts/banner_listview.dart';
import 'package:sporting_app/view/pages/player/main/componunts/big_news_tab.dart';
import 'package:sporting_app/view/pages/player/main/componunts/event_category.dart';
import 'package:sporting_app/view/pages/player/main/componunts/mini_news_list.dart';
import 'package:sporting_app/view/pages/player/main/componunts/recommend_stadium_list.dart';
import 'package:sporting_app/view/pages/player/main/componunts/recommend_stadium_title.dart';
import 'package:sporting_app/view/pages/player/main/componunts/sports_category.dart';

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
}
