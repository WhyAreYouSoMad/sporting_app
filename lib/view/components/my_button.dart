import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';

class MyButton extends StatelessWidget {
  final double width;
  final double height;
  final Color backgroundColor;
  final String text;
  final VoidCallback funButton;
  final String? image;
  final double? imageSize;
  final FontWeight fontWeight;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;

  const MyButton({
    Key? key,
    this.text = "",
    required this.funButton,
    this.width = 312,
    this.height = 40,
    this.backgroundColor = kPrimaryColor,
    this.image,
    this.imageSize = 40,
    this.fontWeight = FontWeight.normal,
    this.icon,
    this.iconSize = 30,
    this.iconColor = kDarkIconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image == null && icon == null) {
      return ElevatedButton(
        onPressed: funButton,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor, fixedSize: Size(width, height)),
        child: Text(
          text,
          style: TextStyle(fontWeight: fontWeight),
        ),
      );
    } if(icon == null) {
      return IconButton(
        alignment: Alignment.center,
        onPressed: funButton,
        icon: Image.asset(image!),
        iconSize: imageSize,
      );
    } else {
      return IconButton(
        alignment: Alignment.center,
        onPressed: funButton,
        icon: Icon(icon, color: iconColor),
        iconSize: iconSize,
      );
    }
  }
}
