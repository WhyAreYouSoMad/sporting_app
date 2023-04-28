import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/controller/company_controller.dart';
import 'package:sporting_app/controller/company_stadium_list_controller.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/provider/session_provider.dart';
import 'package:sporting_app/view/components/my_list_tile.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page.dart';

class CompanyInfoContents extends ConsumerWidget {
  const CompanyInfoContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                title: ref.watch(sessionProvider).user!.nickname,
                subtitle: "내정보 관리 >",
                funSubtitle: () {
                  ref.read(companyControllerProvider).getCompanyDetail();
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
            InkWell(
              onTap: () {
                ref.read(myStadiumListControllerProvider).getMyStadiumListController();
              },
              child: Container(
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
