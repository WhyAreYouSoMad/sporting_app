import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';
import 'package:flutter_final_project_practice/view/pages/stadium/stadium_list/stadium_list_page.dart';

class MainSportCategories extends StatelessWidget {
  const MainSportCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate(
        [
          _buildSportIcon(
            "assets/images/sport_categories/tennis.png",
            "테니스",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "테니스"),
                ),
              );
            },
          ),
          _buildSportIcon(
            "assets/images/sport_categories/base_ball.png",
            "야구",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "야구"),
                ),
              );
            },
          ),
          _buildSportIcon(
            "assets/images/sport_categories/bowling.png",
            "볼링",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "볼링"),
                ),
              );
            },
          ),
          _buildSportIcon(
            "assets/images/sport_categories/billiards.png",
            "당구",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "당구"),
                ),
              );
            },
          ),
          _buildSportIcon(
            "assets/images/sport_categories/golf.png",
            "골프",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "골프"),
                ),
              );
            },
          ),
          _buildSportIcon(
            "assets/images/sport_categories/foot_ball.png",
            "축구",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "축구"),
                ),
              );
            },
          ),
          _buildSportIcon(
            "assets/images/sport_categories/table_tennis.png",
            "탁구",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "탁구"),
                ),
              );
            },
          ),
          _buildSportIcon(
            "assets/images/sport_categories/basket_ball.png",
            "농구",
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StadiumListPage(sportName: "농구"),
                ),
              );
            },
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

  Column _buildSportIcon(String image, String sportName, VoidCallback fun) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyButton(
          funButton: fun,
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
