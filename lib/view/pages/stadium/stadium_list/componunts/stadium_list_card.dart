import 'package:flutter/material.dart';
import 'package:sporting_app/common/componunts/rating_star.dart';
import 'package:sporting_app/common/constants.dart';

class StadiumListCard extends StatelessWidget {
  final String stadiumName;
  final String price;
  final String location;
  final String stadiumPic;

  const StadiumListCard(
      {required this.price,
      required this.stadiumName,
      required this.location,
      required this.stadiumPic,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Card(
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(stadiumPic),
                      _buildLocationBlock(),
                      _buildSticky()
                    ],
                  ),
                  _buildContent(),
                  _buildPriceTab(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildPriceTab() {
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

  Padding _buildContent() {
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
          const RatingStar(
            rating: 4.5,
            reviewCount: 4800,
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Container(
                height: 20,
                width: 65,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF3366),
                ),
                child: const Column(
                  children: [
                    Text(
                      "남은 인원",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
                width: 65,
                decoration: const BoxDecoration(
                  color: kWhiteColor,
                  border: Border(
                    top: BorderSide(color: Color(0xFFFF3366), width: 1),
                    right: BorderSide(color: Color(0xFFFF3366), width: 1),
                    bottom: BorderSide(color: Color(0xFFFF3366), width: 1),
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      "오늘마감",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF3366),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Positioned _buildSticky() {
    return Positioned(
      top: 0,
      left: 20,
      child: Container(
        height: 80,
        width: 70,
        padding: const EdgeInsets.only(top: 5, left: 5),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFFFF6666), Color(0xFFFF9933), Color(0xFFFFFF99)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "경기임박",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              "오늘마감",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.white),
              textAlign: TextAlign.start,
            ),
            Text(
              "남은 인원 3 명",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }

  Positioned _buildLocationBlock() {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 30,
        width: 400,
        padding: const EdgeInsets.all(8.0),
        color: Colors.black.withOpacity(0.5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.location_on_sharp, color: kWhiteColor, size: 13),
            const SizedBox(width: 5),
            Text(
              location,
              style: const TextStyle(
                fontSize: 10,
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
