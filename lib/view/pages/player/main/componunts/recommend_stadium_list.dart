import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/player/main/componunts/recommend_stadium_tile.dart';

class RecommendStadiumList extends StatelessWidget {
  const RecommendStadiumList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 180,
        width: 170,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            const RecommendStadiumTile(
              image: "assets/golfcourse.jpg",
              stadiumName: "영도 골프장",
              price: "70,000",
              rating: 5.0,
              reviewCount: 332,
            ),
            const RecommendStadiumTile(
              image: "assets/Tennis.jpg",
              stadiumName: "사직 테니스장",
              price: "90,000",
              rating: 4.5,
              reviewCount: 225,
            ),
            const RecommendStadiumTile(
              image: "assets/billiardhall.jpg",
              stadiumName: "명지 당구장",
              price: "8,000",
              rating: 2.5,
              reviewCount: 333,
            ),
            const RecommendStadiumTile(
              image: "assets/tabletennis.jpg",
              stadiumName: "강원 탁구장",
              price: "7,000",
              rating: 5.0,
              reviewCount: 16554,
            ),
            const RecommendStadiumTile(
              image: "assets/bowlingalley.jpg",
              stadiumName: "서면 볼링장",
              price: "70,000",
              rating: 4.0,
              reviewCount: 4154,
            ),
          ],
        ),
      ),
    );
  }
}
