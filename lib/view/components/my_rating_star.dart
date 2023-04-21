import 'package:flutter/material.dart';

class MyRatingStar extends StatelessWidget {
  final double rating;
  final int reviewCount;
  final double iconSize;
  final double textSize;

  const MyRatingStar({this.rating = 0, this.reviewCount = 0, this.iconSize = 14, this.textSize = 14, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: rating >= 1 ? Colors.yellow : Colors.grey,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rating >= 2 ? Colors.yellow : Colors.grey,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rating >= 3 ? Colors.yellow : Colors.grey,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rating >= 4 ? Colors.yellow : Colors.grey,
          size: iconSize,
        ),
        Icon(
          Icons.star,
          color: rating >= 5 ? Colors.yellow : Colors.grey,
          size: iconSize,
        ),
        const SizedBox(width: 5),
        Text(rating.toString(), style: TextStyle(fontSize: textSize)),
        Text("($reviewCount)"),
      ],
    );
  }
}
