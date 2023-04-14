import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/my_button.dart';
import 'package:sporting_app/view/componunts/rating_star.dart';

class CompanyStadiumListCard extends StatelessWidget {
  final String image;
  final String stadiumName;

  const CompanyStadiumListCard({required this.image, required this.stadiumName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 160,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child:
                Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(stadiumName,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: kTextColor)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: RatingStar(rating: 3, reviewCount: 300),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(text: "수정하기")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}