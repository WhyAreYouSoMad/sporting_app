import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/components/my_sliver_divider.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/companents/company_stadium_detail_court_detail.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/companents/company_stadium_detail_form.dart';

class CompanyStadiumDetailBody extends StatelessWidget {
  const CompanyStadiumDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MyStadiumItem(
            location: '광안리 해수욕장 도보 10분',
            stadiumPic: 'assets/images/stadiums/baseballpark.jpg',
            stadiumName: '사직 야구장',
            hasRating: false,
            hasUnderBlock: false,
            stadiumNameTextSize: 25,
          ),
        ),
        SliverToBoxAdapter(child: const SizedBox(height: 30)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CompanyStadiumDetailForm(),
          ),
        ),
        MySliverDivider(topPadding: 20),
        SliverToBoxAdapter(child: const SizedBox(height: 30)),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CompanyStadiumDetailCourtDetail(),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: MyButton(
              funButton: () {},
              text: '코트 추가',
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}