import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/controller/stadium_controller.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/components/stadium_list_header.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/components/stadium_list_sports_category_app_bar.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/stadium_list_page_view_model.dart';


class StadiumListBody extends ConsumerWidget {
  const StadiumListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StadiumListPageModel? model = ref.watch(stadiumListPageProvider);
    Logger().d(model);
    List<Stadium> stadiums = [];
    if (model != null) {
      Logger().d(model);
      stadiums = model.stadiums;
    }
    return CustomScrollView(
      slivers: [
        const StadiumListHeader(),
        const StadiumListSportsCategoryAppBar(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: stadiums.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: MyStadiumItem(
                  price: 20000,
                  stadiumName: stadiums[index].name!,
                  location: "광안리해수욕장 도보 10분",
                  stadiumPic: stadiums[index].sourceFile.fileUrl,
                  hasEvent: false,
                  iscard: true,
                  onTab: () {
                    Logger().d("터치됨");
                   ref.read(stadiumControllerProvider).getStadiumDetail(stadiums[index].id);
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
