import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/stadium/stadium_list/components/stadium_list_header.dart';
import 'package:flutter_final_project_practice/view/pages/stadium/stadium_list/components/stadium_list_item.dart';

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
              return const Padding(
                padding: EdgeInsets.all(5),
                child: StadiumListItem(
                    price: "2,200,000",
                    stadiumName: "사직 야구장",
                    location: "광안리해수욕장 도보 10분",
                    stadiumPic: "assets/images/stadiums/baseballpark.jpg",
                hasEvent: true,),
              );
            },
          ),
        ),
      ],
    );
  }
}
