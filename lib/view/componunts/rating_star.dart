import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  final double rating;
  final int reviewCount;
  const RatingStar({this.rating = 0, this.reviewCount = 0, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );;
  }
}
