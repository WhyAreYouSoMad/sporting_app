import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/view/components/my_sliver_divider.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_calendar.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_court_item.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_favorite.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page_view_model.dart';

class StadiumDetailBody extends ConsumerWidget {
  const StadiumDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    StadiumDetailPageModel? model = ref.watch(stadiumDetailPageProvider);
    Stadium stadium = model!.stadium;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MyStadiumItem(
            stadiumName: stadium.name,
            stadiumPic: stadium.sourceFile.fileUrl,
            location: "부산 광역시 동래구 사직로 45",
            price: stadium.courts?[0].price,
            hasSticky: false,
          ),
        ),
        const MySliverDivider(topPadding: 10, thickness: 10),
        const SliverToBoxAdapter(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: StadiumDetailFavorite(),
        )),
        const MySliverDivider(topPadding: 10, thickness: 10),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: StadiumDetailCalendar(),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: stadium.courts?.length,
            (context, index) {
              return  StadiumDetailCourtItem(
                courtContent: stadium.courts![index].content,
                courtTitle: stadium.courts![index].title,
                courtImage: stadium.courts![index].sourceFile.fileUrl,
                courtPrice: stadium.courts![index].price,
              );
            },
          ),
        ),
      ],
    );
  }
}
