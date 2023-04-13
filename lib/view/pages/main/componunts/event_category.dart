import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/componunts/image_button.dart';

class EventCategory extends StatelessWidget {
  const EventCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      sliver: SliverGrid(
        delegate: SliverChildListDelegate([
          const ImageButton(image: "assets/google.png", text: "몰루?"),
          const ImageButton(image: "assets/google.png", text: "몰루?"),
          const ImageButton(image: "assets/google.png", text: "몰루?"),
          const ImageButton(image: "assets/google.png", text: "몰루?"),
        ]),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      ),
    );
  }
}
