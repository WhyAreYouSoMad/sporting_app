import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/controller/stadium_controller.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/stadium_list_page.dart';

class MainSportCategories extends ConsumerWidget {
  const MainSportCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverGrid(
      delegate: SliverChildListDelegate(
        [
          _buildSportIcon(
            "assets/images/sport_categories/tennis.png",
            "테니스",
            ref,
          ),
          _buildSportIcon(
            "assets/images/sport_categories/base_ball.png",
            "야구",
            ref,
          ),
          _buildSportIcon(
            "assets/images/sport_categories/bowling.png",
            "볼링",
            ref,
          ),
          _buildSportIcon(
            "assets/images/sport_categories/billiards.png",
            "풋살",
            ref,
          ),
          _buildSportIcon(
            "assets/images/sport_categories/golf.png",
            "배구",
            ref,
          ),
          _buildSportIcon(
            "assets/images/sport_categories/foot_ball.png",
            "축구",
            ref,
          ),
          _buildSportIcon(
            "assets/images/sport_categories/table_tennis.png",
            "탁구",
            ref,
          ),
          _buildSportIcon(
            "assets/images/sport_categories/basket_ball.png",
            "농구",
            ref,
          ),
        ],
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
      ),
    );
  }

  Column _buildSportIcon(String image, String sportName, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyButton(
          funButton: () {
            ref.read(stadiumControllerProvider).getStadiumList(sportName);
          },
          image: image,
        ),
        Text(
          sportName,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
