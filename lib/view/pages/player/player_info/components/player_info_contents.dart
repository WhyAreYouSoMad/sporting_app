import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_list_tile.dart';
import 'package:sporting_app/view/pages/player/player_info_update/player_info_update_page.dart';

class PlayerInfoContents extends StatelessWidget {
  const PlayerInfoContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kGrayColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kBlackColor.withOpacity(0.1),
                  ),
                ),
              ),
              child: MyListTile(
                image: "assets/images/icons/man.png",
                imageHeight: 40,
                rect: true,
                funTrailing: () {},
                trailingText: "My 혜택",
                title: "유저네임",
                subtitle: "내정보 관리 >",
                funSubtitle: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=> PlayerInfoUpdatePage()));
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kBlackColor.withOpacity(0.1),
                  ),
                ),
              ),
              child: const MyListTile(
                image: "assets/images/icons/pointt.png",
                imageHeight: 40,
                trailingText: "200",
                trailingFontSize: 20,
                title: "포인트",
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kBlackColor.withOpacity(0.1),
                  ),
                ),
              ),
              child: const MyListTile(
                image: "assets/images/icons/coin.png",
                imageHeight: 40,
                trailingText: "200",
                trailingFontSize: 20,
                title: "Sport Coin",
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kBlackColor.withOpacity(0.1),
                  ),
                ),
              ),
              child: const MyListTile(
                image: "assets/images/icons/coopon.png",
                trailingText: "1",
                trailingFontSize: 20,
                title: "쿠폰함",
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kBlackColor.withOpacity(0.1),
                  ),
                ),
              ),
              child: const MyListTile(
                image: "assets/images/icons/sns.png",
                title: "나의 후기",
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kBlackColor.withOpacity(0.1),
                  ),
                ),
              ),
              child: const MyListTile(
                image: "assets/images/icons/her.png",
                title: "찜",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
