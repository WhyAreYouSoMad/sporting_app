import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_court_item_button.dart';

class StadiumDetailCourtItem extends StatelessWidget {

  const StadiumDetailCourtItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/courts/as1.jpg"),
          const SizedBox(height: 10),
          const Text(
            "1번 코트",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "넓고 깨끗한 코트",
                style:
                    TextStyle(fontWeight: FontWeight.w200, color: kTextColor),
              ),
              Text(
                "최대 30인 수용",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1시간 대여",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: kTextColor),
              ),
              Text(
                "2,000,000 원",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kTextColor),
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(5, (index) => const StadiumDetailCourtItemButton()),
            ),
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}
