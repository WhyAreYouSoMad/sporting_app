import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/company_stadium_detail_page.dart';

class CompanyStadiumListBody extends StatelessWidget {
  const CompanyStadiumListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: MyStadiumItem(
                  price: "2,200,000",
                  stadiumName: "사직 야구장",
                  location: "광안리해수욕장 도보 10분",
                  stadiumPic: "assets/images/stadiums/baseballpark.jpg",
                  hasEvent: false,
                  iscard: true,
                  hasSticky: false,
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompanyStadiumDetailPage(),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
