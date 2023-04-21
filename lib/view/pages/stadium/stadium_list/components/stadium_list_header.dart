import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_card_button.dart';

class StadiumListHeader extends StatelessWidget {
  const StadiumListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      expandedHeight: 70,
      pinned: true,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MyCardButton(
                text: "부산(북구)",
                icon: Icons.location_on_outlined,
                iconSize: 12,
                height: 25,
                rowAlign: MainAxisAlignment.center,
                sizedBoxWidth: 5,
                fontSize: 12,
              ),
            ),
            Expanded(
              child: MyCardButton(
                text: "2022-02-13",
                icon: Icons.calendar_month,
                height: 25,
                rowAlign: MainAxisAlignment.center,
                sizedBoxWidth: 5,
                fontSize: 12,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
