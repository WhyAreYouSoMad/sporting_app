import 'package:flutter/material.dart';

class StadiumListSportsCategoryAppBar extends StatelessWidget {
  const StadiumListSportsCategoryAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      pinned: false,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        title: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _category("assets/images/sport_categories/base_ball.png", () {}),
            _category("assets/images/sport_categories/golf.png", () {}),
            _category("assets/images/sport_categories/bowling.png", () {}),
            _category("assets/images/sport_categories/foot_ball.png", () {}),
            _category("assets/images/sport_categories/tennis.png", () {}),
            _category("assets/images/sport_categories/billiards.png", () {}),
            _category("assets/images/sport_categories/basket_ball.png", () {}),
            _category("assets/images/sport_categories/table_tennis.png", () {}),
          ],
        ),
        centerTitle: true,
      ),
    );
  }

  Widget _category(String image, GestureTapCallback onTabEvent) {
    return InkWell(
      onTap: onTabEvent,
      child: SizedBox(
        height: 40,
        width: 80,
        child: Image.asset(
          image,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
