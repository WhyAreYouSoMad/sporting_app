import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/dummy/honor/honorary_page.dart';
import 'package:sporting_app/view/pages/dummy/honor_player/honor_player_page.dart';
import 'package:sporting_app/view/pages/dummy/honor_stadium/honor_stadium_page.dart';
import 'package:sporting_app/view/pages/dummy/recruitment/recruitment_page.dart';

class MainEventCategories extends StatelessWidget {
  const MainEventCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate(
        [
          _buildSportIcon(
            "assets/images/icons/tr.png",
            "명예의전당",
            () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HonoraryPage()));
            },
          ),
          _buildSportIcon(
            "assets/images/icons/st.png",
            "이달의 구장",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) =>RecruitmentPage()));
            },
          ),
          _buildSportIcon(
            "assets/images/logo/sporting.png",
            "회사소개",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => HonorStadiumPage()));
            },
          ),
          _buildSportIcon(
            "assets/images/icons/ut.png",
            "슈퍼플레이",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => HonorPlayerPage()));
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
