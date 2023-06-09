import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_card_button.dart';

class StadiumListHeader extends StatelessWidget {
  const StadiumListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
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
                height: 40,
                rowAlign: MainAxisAlignment.center,
                sizedBoxWidth: 5,
                fontSize: 12,
              ),
            ),
            Expanded(
              child: MyCardButton(
                text: "2022-02-13",
                icon: Icons.calendar_month,
                height: 40,
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
