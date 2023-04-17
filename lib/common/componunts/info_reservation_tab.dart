import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';

class InfoReservationTab extends StatelessWidget {
  const InfoReservationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 30,
        ),
        child: Column(
          children: [_buildTitle(), _buildReservationCard()],
        ),
      ),
    ]));
  }

  Row _buildTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "예약 내역",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  InkWell _buildReservationCard() {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 2,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: kGrayColor,
              width: 1,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "내 예약",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
