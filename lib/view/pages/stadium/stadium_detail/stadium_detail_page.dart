import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/stadium/stadium_detail/components/stadium_detail_body.dart';

class StadiumDetailPage extends StatelessWidget {
  StadiumDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _detailAppbar(context),
        body: const StadiumDetailBody(),
      ),
    );
  }

  AppBar _detailAppbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kWhiteColor,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      elevation: 2,
      title: const Text(
        "사직야구장",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart, color: Colors.black),
        ),
      ],
    );
  }
}
