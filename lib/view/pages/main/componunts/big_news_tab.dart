import 'package:flutter/material.dart';

class BigNewsTab extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const BigNewsTab(
      {required this.title,
      required this.subtitle,
      required this.image,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Column(
        children: [
          const SizedBox(height: 10),
          _buildTitle(),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {},
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                _buildNewsImage(),
                _buildSubtitle(),
              ],
            ),
          ),
        ],
      )
    ]));
  }

  Text _buildTitle() {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
    );
  }

  Widget _buildSubtitle() {
    return Positioned(
      left: 30,
      bottom: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildNewsImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
          width: double.infinity,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
          )),
    );
  }
}
