import 'package:flutter/material.dart';

class MiniNewsTab extends StatelessWidget {
  final String title;
  final String image;

  const MiniNewsTab({required this.title, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNewsImage(),
            const SizedBox(height: 10),
            _buildNewsTitle()
          ],
        ),
      ),
    );
  }

  ClipRRect _buildNewsImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: SizedBox(
        width: 175,
        height: 100,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }

  Text _buildNewsTitle() {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
    );
  }
}
