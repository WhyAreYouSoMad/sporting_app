import 'dart:async';

import 'package:flutter/material.dart';

class BannerListview extends StatefulWidget {
  const BannerListview({Key? key}) : super(key: key);

  @override
  State<BannerListview> createState() => _BannerListviewState();
}

class _BannerListviewState extends State<BannerListview> {
  Timer? timer;
  PageController pageController = PageController(initialPage: 0);
  int imgcurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      int nextPage = (imgcurrentIndex + 1) % 4;
      setState(() {
        imgcurrentIndex = nextPage;
        pageController.animateTo(imgcurrentIndex * 400.0,
            duration: const Duration(milliseconds: 500), curve: Curves.linear);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SizedBox(
          height: 130,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: 400,
                  height: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/sport${index + 1}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                imgcurrentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
