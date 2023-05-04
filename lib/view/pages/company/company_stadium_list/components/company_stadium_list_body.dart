import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/controller/stadium_controller.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';
import 'package:sporting_app/view/pages/company/company_stadium_list/company_stadium_list_page_view_model.dart';

class CompanyStadiumListBody extends ConsumerWidget {
  const CompanyStadiumListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    CompanyStadiumListPageModel? model = ref.watch(companyStadiumListPageProvider);

    List<Stadium> stadiums = [];


    if(model != null) {
      stadiums = model.stadiums;
    }

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: stadiums.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: MyStadiumItem(
                  price: 2000,
                  stadiumName: stadiums[index].name!,
                  location: "광안리해수욕장 도보 10분",
                  stadiumPic: stadiums[index].sourceFile.fileUrl,
                  hasEvent: false,
                  iscard: true,
                  hasSticky: false,
                  onTab: () {
                   ref.read(stadiumControllerProvider).getMyStadiumDetail(stadiums[index].id);
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
