import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';

class MyCardButton extends StatelessWidget {
  final double elevation;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double height;
  final String text;
  final MainAxisAlignment rowAlign;
  final bool isIconFirst;
  final double fontSize;
  final FontWeight fontWeight;
  final IconData icon;
  final double iconSize;
  final double sizedBoxWidth;


  const MyCardButton({Key? key,
    required this.icon,
    required this.text,
    this.elevation = 2,
    this.borderRadius = 5,
    this.borderColor = kBoarderColor,
    this.borderWidth = 1,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 13,
    this.iconSize = 16,
    this.height = 40,
    this.isIconFirst = true,
    this.rowAlign = MainAxisAlignment.spaceBetween,
    this.sizedBoxWidth = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: isIconFirst ? _buildIconFirst() : _buildTextFirst(),
          ),
        ),
      ),
    );
  }

  Widget _buildIconFirst() {
    return Row(
      mainAxisAlignment: rowAlign,
      children: [
        Icon(
          icon,
          size: 16,
        ),
        SizedBox(width: sizedBoxWidth),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }

  Widget _buildTextFirst() {
    return Row(
      mainAxisAlignment: rowAlign,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
        SizedBox(width: sizedBoxWidth),
        Icon(
          icon,
          size: 16,
        ),
      ],
    );
  }
}
