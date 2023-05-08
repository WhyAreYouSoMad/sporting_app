import 'package:flutter/material.dart';

class MyYouTubeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;

  const MyYouTubeAppBar({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Sporting YouTube'),
      centerTitle: true,
      backgroundColor: backgroundColor, // backgroundColor 전달
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
