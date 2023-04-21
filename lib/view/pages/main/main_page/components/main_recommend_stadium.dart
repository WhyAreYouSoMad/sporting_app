import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';
import 'package:flutter_final_project_practice/view/components/my_rating_star.dart';

class MainRecommendStadium extends StatelessWidget {
  const MainRecommendStadium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "추천 경기장",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kTextColor,
              ),
            ),
            SizedBox(height: 15),
            MainRecommendStadiumList(),
          ],
        ),
      ),
    );
  }
}

class MainRecommendStadiumList extends StatelessWidget {
  const MainRecommendStadiumList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          MainRecommendStadiumTile(
            image: "assets/images/stadiums/golfcourse.jpg",
            stadiumName: "영도 골프장",
            price: "70,000",
            rating: 5.0,
            reviewCount: 332,
          ),
          MainRecommendStadiumTile(
            image: "assets/images/stadiums/Tennis.jpg",
            stadiumName: "사직 테니스장",
            price: "90,000",
            rating: 4.5,
            reviewCount: 225,
          ),
          MainRecommendStadiumTile(
            image: "assets/images/stadiums/billiardhall.jpg",
            stadiumName: "명지 당구장",
            price: "8,000",
            rating: 2.5,
            reviewCount: 333,
          ),
          MainRecommendStadiumTile(
            image: "assets/images/stadiums/tabletennis.jpg",
            stadiumName: "강원 탁구장",
            price: "7,000",
            rating: 5.0,
            reviewCount: 16554,
          ),
          MainRecommendStadiumTile(
            image: "assets/images/stadiums/bowlingalley.jpg",
            stadiumName: "서면 볼링장",
            price: "70,000",
            rating: 4.0,
            reviewCount: 4154,
          ),
        ],
      ),
    );
  }
}

class MainRecommendStadiumTile extends StatelessWidget {
  final String image;
  final String stadiumName;
  final double rating;
  final int reviewCount;
  final String price;

  const MainRecommendStadiumTile(
      {required this.image,
      required this.stadiumName,
      required this.price,
      this.rating = 0,
      this.reviewCount = 0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(),
            const Spacer(),
            _buildStadiumName(),
            const Spacer(),
            MyRatingStar(rating: rating, reviewCount: reviewCount),
            const SizedBox(height: 8),
            _buildRatingNum()
          ],
        ),
      ),
    );
  }

  Row _buildRatingNum() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(width: 100),
        Text(
          price,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const Text("원")
      ],
    );
  }

  Text _buildStadiumName() {
    return Text(
      stadiumName,
      style: const TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
    );
  }

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: SizedBox(
        width: 170,
        height: 110,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
