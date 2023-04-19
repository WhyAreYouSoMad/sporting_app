import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_card.dart';
import 'package:sporting_app/view/pages/stadiumlist/stadium_list.dart';

class ImageButton extends StatelessWidget {
  final String text;
  final String image;

  const ImageButton({required this.image, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIcon(context),
        _buildSportName(),
      ],
    );
  }

  Widget _buildSportName() {
    return Text(
      text,
      style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildIcon(BuildContext context) {
    return IconButton(
      onPressed: () {Navigator
          .of(context)
          .push(MaterialPageRoute(builder: (_) => StadiumList(text)));},
      icon: Image.asset(image),
      iconSize: 60,
    );
  }
}
