import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/componunts/mini_news_tab.dart';

class MiniNewsList extends StatelessWidget {
  const MiniNewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );;
  }
}
