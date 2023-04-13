import 'package:flutter/material.dart';

class RecommendStadiumTile extends StatelessWidget {
  final String image;
  final String stadiumName;
  final double rating;
  final int reviewCount;
  final String price;
  const RecommendStadiumTile({required this.image, required this.stadiumName, required this.price, this.rating = 0, this.reviewCount = 0, Key? key}) : super(key: key);

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
            _buildRatingStar(),
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

  Row _buildRatingStar() {
    return Row(
            children: [
              Icon(
                Icons.star,
                color: rating >= 1 ? Colors.yellow : Colors.grey,
                size: 14,
              ),
              Icon(
                Icons.star,
                color: rating >= 2 ? Colors.yellow : Colors.grey,
                size: 14,
              ),
              Icon(
                Icons.star,
                color: rating >= 3 ? Colors.yellow : Colors.grey,
                size: 14,
              ),
              Icon(
                Icons.star,
                color: rating >= 4 ? Colors.yellow : Colors.grey,
                size: 14,
              ),
              Icon(
                Icons.star,
                color: rating >= 5 ? Colors.yellow : Colors.grey,
                size: 14,
              ),
              Text(rating.toString()),
              Text("($reviewCount)"),
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
