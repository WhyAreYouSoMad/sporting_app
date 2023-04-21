import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';
import 'package:flutter_final_project_practice/view/components/my_list_tile.dart';

class CompanyInfoContents extends StatelessWidget {
  const CompanyInfoContents({Key? key}) : super(key: key);

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
                funSubtitle: () {},
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
                title: "가게 후기",
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
                title: "내 경기장 관리하기",
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
                title: "경기장 등록하기",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
