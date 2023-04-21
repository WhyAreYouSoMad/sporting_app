import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_sliver_divider.dart';
import 'package:flutter_final_project_practice/view/pages/main/main_page/components/main_banner.dart';
import 'package:flutter_final_project_practice/view/pages/main/main_page/components/main_event_categories.dart';
import 'package:flutter_final_project_practice/view/pages/main/main_page/components/main_news.dart';
import 'package:flutter_final_project_practice/view/pages/main/main_page/components/main_recommend_stadium.dart';
import 'package:flutter_final_project_practice/view/pages/main/main_page/components/main_sport_categories.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MainSportCategories(),
        MainBanner(),
        MainEventCategories(),
        MySliverDivider(topPadding: 20),
        MainRecommendStadium(),
        MySliverDivider(topPadding: 20),
        MainNews(),
      ],
    );
  }
}
