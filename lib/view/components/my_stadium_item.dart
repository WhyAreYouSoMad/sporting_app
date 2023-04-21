import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_image_container.dart';
import 'package:sporting_app/view/components/my_rating_star.dart';

class MyStadiumItem extends StatelessWidget {
  final String stadiumName;
  final String price;
  final String location;
  final String stadiumPic;
  final bool hasEvent;
  final bool hasSticky;
  final GestureTapCallback? onTab;
  final bool iscard;

  const MyStadiumItem({
    required this.price,
    required this.stadiumName,
    required this.location,
    required this.stadiumPic,
    this.onTab,
    this.hasEvent = false,
    this.hasSticky = true,
    this.iscard = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return iscard? _buildIsCard() : _buildIsNotCard();
  }

  Widget _buildIsCard() {
    return Card(
      child: InkWell(
        onTap: onTab,
        child: Column(
          children: [
            MyImageContainer(
              image: stadiumPic,
              hasSticky: hasSticky,
              hasUnderBlock: true,
              imageHeight: 250,
              empty: 0,
              location: location,
            ),
            _buildContent(),
            _buildPriceTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildIsNotCard() {
    return Column(
      children: [
        MyImageContainer(
          image: stadiumPic,
          hasSticky: hasSticky,
          hasUnderBlock: true,
          imageHeight: 250,
          empty: 0,
          location: location,
        ),
        _buildContent(),
        _buildPriceTab(),
      ],
    );
  }

  Widget _buildPriceTab() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "대관 | 1시간",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: kGrayColor,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "$price 원",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stadiumName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          const MyRatingStar(
            rating: 4.5,
            reviewCount: 4800,
          ),
          const SizedBox(height: 7),
          hasEvent ? _buildEventTab() : const SizedBox(),
        ],
      ),
    );
  }

  Widget _buildEventTab() {
    return Row(
      children: [
        Container(
          height: 20,
          width: 65,
          decoration: const BoxDecoration(
            color: Color(0xFFFF3668),
          ),
          child: const Center(
            child: Text(
              "남은 인원",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
        Container(
          height: 20,
          width: 65,
          decoration: const BoxDecoration(
            color: kWhiteColor,
            border: Border(
              top: BorderSide(color: Color(0xFFFF3668), width: 1),
              right: BorderSide(color: Color(0xFFFF3668), width: 1),
              bottom: BorderSide(color: Color(0xFFFF3668), width: 1),
            ),
          ),
          child: const Center(
            child: Text(
              "오늘마감",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF3668),
              ),
            ),
          ),
        )
      ],
    );
  }
}
