import 'package:flutter/material.dart';
import 'package:sporting_app/view/componunts/rating_star.dart';

class RecommendStadiumTile extends StatelessWidget {
  final String image;
  final String stadiumName;
  final double rating;
  final int reviewCount;
  final String price;

  const RecommendStadiumTile(
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
            RatingStar(rating: rating, reviewCount: reviewCount),
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
      style: const TextStyle(fontWeight: FontWeight.bold),
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
