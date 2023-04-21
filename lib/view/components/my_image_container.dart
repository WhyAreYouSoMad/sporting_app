import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';

class MyImageContainer extends StatelessWidget {
  final double imageHeight;
  final String image;
  final bool hasSticky;
  final bool hasUnderBlock;
  final int empty;
  final String location;

  const MyImageContainer(
      {Key? key,
      this.imageHeight = 300,
      required this.image,
      this.empty = 3,
      this.location = '',
      this.hasSticky = false,
      this.hasUnderBlock = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: imageHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            ),
          ),
        ),
        hasUnderBlock ? _buildLocationBlock() : const SizedBox(),
        hasSticky ? _buildSticky() : const SizedBox(),
      ],
    );
  }

  Widget _buildLocationBlock() {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 30,
        width: 400,
        padding: const EdgeInsets.all(8.0),
        color: Colors.black.withOpacity(0.5),
        child: Row(
          children: [
            const Icon(Icons.location_on_sharp, color: kWhiteColor, size: 13),
            const SizedBox(width: 5),
            Text(
              location,
              style: const TextStyle(
                fontSize: 10,
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  Positioned _buildSticky() {
    return Positioned(
      top: 0,
      left: 20,
      child: Container(
        height: 80,
        width: 70,
        padding: const EdgeInsets.only(top: 5, left: 5),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF6666), Color(0xFFFF9933), Color(0xFFFFFF99)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "경기임박",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
            const SizedBox(height: 15),
            Text(
              "남은 인원 ${empty.toString()} 명",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
