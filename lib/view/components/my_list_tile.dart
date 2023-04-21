import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String trailingText;
  final String image;
  final bool rect;
  final double titleFontSize;
  final double? imageWidth;
  final double? imageHeight;
  final Color titleTextColor;
  final VoidCallback? funTrailing;
  final String? subtitle;
  final double? subtitleFontSize;
  final Color? subtitleFontColor;
  final VoidCallback? funSubtitle;
  final double? trailingFontSize;
  final Color? trailingFontColor;

  const MyListTile({
    Key? key,
    this.title = "",
    this.image = "",
    this.rect = false,
    this.trailingText = "",
    this.titleFontSize = 20,
    this.imageHeight = 40,
    this.imageWidth = 40,
    this.titleTextColor = kTextColor,
    this.funTrailing,
    this.subtitle,
    this.subtitleFontColor,
    this.subtitleFontSize = 13,
    this.funSubtitle,
    this.trailingFontSize = 13,
    this.trailingFontColor = kTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (subtitle == null) {
      return ListTile(
        leading: rect ? _buildClipRRect() : _buildImage(),
        title: Text(
          title,
          style: TextStyle(fontSize: titleFontSize, color: titleTextColor),
        ),
        trailing: Text(
          trailingText,
          style:
              TextStyle(fontSize: trailingFontSize, color: trailingFontColor),
        ),
      );
    } else {
      return ListTile(
        leading: rect ? _buildClipRRect() : _buildImage(),
        title: Text(
          title,
          style: TextStyle(fontSize: titleFontSize, color: titleTextColor),
        ),
        subtitle:
            funSubtitle == null ? _buildSubtitleText() : _buildSubTitleButton(),
        trailing:
            funTrailing == null ? _buildTrailingText() : _buildTextButton(),
      );
    }
  }

  Widget _buildSubTitleButton() {
    return InkWell(
      onTap: funSubtitle,
      child: Text(
        subtitle!,
        style: TextStyle(fontSize: subtitleFontSize, color: subtitleFontColor),
      ),
    );
  }

  Widget _buildSubtitleText() {
    return Text(
      subtitle!,
      style: TextStyle(fontSize: subtitleFontSize, color: subtitleFontColor),
    );
  }

  Widget _buildTextButton() {
    return TextButton(
      onPressed: funTrailing,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.blue, width: 1),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(trailingText),
    );
  }

  Widget _buildTrailingText() {
    return Text(
      trailingText,
      style: TextStyle(fontSize: trailingFontSize, color: trailingFontColor),
    );
  }

  Widget _buildClipRRect() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(image,
          fit: BoxFit.cover, height: imageHeight, width: imageWidth),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      image,
      width: imageWidth,
      height: imageHeight,
    );
  }
}
