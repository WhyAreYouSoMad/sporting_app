import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_image_container.dart';
import 'package:sporting_app/view/components/my_rating_star.dart';

class CompanyStadiumDetailInfo extends StatelessWidget {
  final String stadiumName;
  final String price;
  final String stadiumPic;
  final bool hasSticky;

  const CompanyStadiumDetailInfo({
    required this.price,
    required this.stadiumName,
    required this.stadiumPic,
    this.hasSticky = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildIsNotCard();
  }

  Widget _buildIsNotCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyImageContainer(
          image: stadiumPic,
          hasSticky: hasSticky,
          hasUnderBlock: false,
          imageHeight: 250,
          empty: 0,
        ),
        Text(
          stadiumName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }

}
