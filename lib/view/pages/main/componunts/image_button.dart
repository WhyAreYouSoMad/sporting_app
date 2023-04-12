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
        IconButton(
          onPressed: () {},
          icon: Image.asset(image),
          iconSize: 40,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
