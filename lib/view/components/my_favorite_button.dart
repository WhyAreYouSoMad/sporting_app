import 'package:flutter/material.dart';


class MyFavoriteButton extends StatefulWidget {
  const MyFavoriteButton({Key? key}) : super(key: key);

  @override
  _MyFavoriteButtonState createState() => _MyFavoriteButtonState();
}

class _MyFavoriteButtonState extends State<MyFavoriteButton> {
  bool _isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _toggleFavorite,
      icon: _isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
      color: _isFavorite ? Colors.red : null,
    );
  }
}