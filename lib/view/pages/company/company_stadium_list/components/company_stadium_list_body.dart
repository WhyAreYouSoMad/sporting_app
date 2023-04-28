import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/model/my_stadiums/my_stadiums.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/company_stadium_detail_page.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page_view_model.dart';

class CompanyStadiumListBody extends ConsumerWidget {
  const CompanyStadiumListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    CompanyStadiumListPageModel? model = ref.watch(companyStadiumListPageProvider);

    List<MyStadiums> myStadiums = [];

    if(model != null) {
      myStadiums = model!.myStadiums;
    }

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: myStadiums.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: MyStadiumItem(
                  price: 2000,
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
