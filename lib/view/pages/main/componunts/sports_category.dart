import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/componunts/image_button.dart';

class SportsCategory extends StatelessWidget {
  const SportsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        const ImageButton(image: "assets/Tennis.png", text: "테니스"),
        const ImageButton(image: "assets/Baseball.png", text: "야구"),
        const ImageButton(image: "assets/Bowling.png", text: "볼링"),
        const ImageButton(image: "assets/daon.png", text: "당구"),
        const ImageButton(image: "assets/Golf.png", text: "골프"),
        const ImageButton(image: "assets/Soccer.png", text: "축구"),
        const ImageButton(image: "assets/Tabletennis.png", text: "탁구"),
        const ImageButton(image: "assets/Basketball.png", text: "농구"),
      ]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisSpacing: 0, crossAxisSpacing: 15),
    );
  }
}
