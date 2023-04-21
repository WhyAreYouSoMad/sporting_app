import 'dart:async';

import 'package:flutter/material.dart';

class MainBanner extends StatefulWidget {
  const MainBanner({Key? key}) : super(key: key);

  @override
  State<MainBanner> createState() => _MainBannerState();
}

class _MainBannerState extends State<MainBanner> {
  Timer? timer;
  PageController pageController = PageController(initialPage: 0);
  int imgCurrentIndex = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 4),
      (timer) {
        int nextPage = (imgCurrentIndex + 1) % 4;
        setState(
          () {
            imgCurrentIndex = nextPage;
            pageController.animateTo(imgCurrentIndex * 400.0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        child: SizedBox(
          height: 130,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 400,
                height: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/banners/banner_${index + 1}.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(
                () {
                  imgCurrentIndex = index;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
