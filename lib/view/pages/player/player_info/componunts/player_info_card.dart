import 'package:flutter/material.dart';

class PlayerInfoCard extends StatelessWidget {
  final String title;
  final String trailingText;
  final String image;

  const PlayerInfoCard({required this.title, required this.trailingText, required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        width: 40,
        height: 40,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: Text(
        // Todo 바인딩 예정
        trailingText,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
