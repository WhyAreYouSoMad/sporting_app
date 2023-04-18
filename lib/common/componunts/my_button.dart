import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';

class MyButton extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final String text;
  final VoidCallback funButton;
  final String? image;
  final double? imageSize;
  final FontWeight fontWeight;

  const MyButton({
    Key? key,
    this.text = "",
    required this.funButton,
    this.width = 312,
    this.height = 40,
    this.backgroundColor = kPrimaryColor,
    this.image,
    this.imageSize,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return ElevatedButton(
        onPressed: funButton,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor, fixedSize: Size(width, height)),
        child: Text(
          text,
          style: TextStyle(fontWeight: fontWeight),
        ),
      );
    } else {
      return IconButton(
        alignment: Alignment.center,
        onPressed: () {},
        icon: Image.asset(image!),
        iconSize: imageSize,
      );
    }
  }
}
