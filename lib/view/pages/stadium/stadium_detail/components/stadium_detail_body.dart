import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_sliver_divider.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_calendar.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_court_item.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_favorite.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';

class StadiumDetailBody extends StatelessWidget {
  const StadiumDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: MyStadiumItem(
            stadiumName: "사직 야구장",
            stadiumPic: "assets/images/stadiums/baseballpark.jpg",
            location: "부산 광역시 동래구 사직로 45",
            price: "~2,200,000",
            hasSticky: false,
          ),
        ),
        const MySliverDivider(topPadding: 10, thickness: 10),
        const SliverToBoxAdapter(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: StadiumDetailFavorite(),
        )),
        const MySliverDivider(topPadding: 10, thickness: 10),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: StadiumDetailCalendar(),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const StadiumDetailCourtItem();
            },
          ),
        ),
      ],
    );
  }
}
