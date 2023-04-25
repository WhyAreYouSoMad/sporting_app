import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/stadium_detail_page.dart';
import 'package:sporting_app/view/pages/stadium/stadium_list/components/stadium_list_header.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';

class StadiumListBody extends StatelessWidget {
  const StadiumListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const StadiumListHeader(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: MyStadiumItem(
                  price: "2,200,000",
                  stadiumName: "사직 야구장",
                  location: "광안리해수욕장 도보 10분",
                  stadiumPic: "https://3-sporting.s3.ap-northeast-2.amazonaws.com/Stadium/%EC%95%BC%EA%B5%AC_Stadium.png",
                  hasEvent: true,
                  iscard: true,
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StadiumDetailPage()),
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
