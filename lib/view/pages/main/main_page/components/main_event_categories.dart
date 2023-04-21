import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';

class MainEventCategories extends StatelessWidget {
  const MainEventCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        _buildSportIcon("assets/images/oauth/google.png", "몰루?"),
        _buildSportIcon("assets/images/oauth/google.png", "몰루?"),
        _buildSportIcon("assets/images/oauth/google.png", "몰루?"),
        _buildSportIcon("assets/images/oauth/google.png", "몰루?"),
      ]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
      ),
    );
  }

  Column _buildSportIcon(String image, String sportName) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyButton(
            funButton: () {},
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
