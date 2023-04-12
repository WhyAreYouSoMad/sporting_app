import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final String text;
  final String image;

  const ImageButton({required this.image, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildIcon(),
        _buildSportName(),
      ],
    );
  }

  Text _buildSportName() {
    return Text(
      text,
      style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
    );
  }

  IconButton _buildIcon() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(image),
      iconSize: 40,
    );
  }
}
