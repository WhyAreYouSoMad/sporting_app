import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_favorite_button.dart';

class StadiumDetailFavorite extends StatelessWidget {
  const StadiumDetailFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "경기장 찜하기",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        MyFavoriteButton(),
      ],
    );
  }
}
