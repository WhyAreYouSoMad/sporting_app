import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/rating_star.dart';
import 'package:sporting_app/view/pages/stadiumlist/componunts/stadium_list_card.dart';

class StadiumList extends StatelessWidget {
  final String sportName;

  const StadiumList(this.sportName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.infinity,
        color: kPrimaryColor,
        child: ListView(
          children: [
            const StadiumListCard(
              image: "assets/billiardhall.jpg",
              price: "60,000",
              stadiumName: "테니스장",
            ),const StadiumListCard(
              image: "assets/billiardhall.jpg",
              price: "60,000",
              stadiumName: "테니스장",
            ),const StadiumListCard(
              image: "assets/billiardhall.jpg",
              price: "60,000",
              stadiumName: "테니스장",
            ),
            _buildStadiumCard(context),
            _buildStadiumCard(context),
            _buildStadiumCard(context),
            _buildStadiumCard(context),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: kDarkIconColor),
      ),
      title: Text(sportName, style: const TextStyle(color: kBlackColor)),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('main_page');
          },
          icon: const Icon(Icons.home, color: kDarkIconColor),
        )
      ],
    );
  }

  Padding _buildStadiumCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 260,
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
                    Image.asset("assets/billiardhall.jpg", fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text("테니스장",
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("1시간 | ",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: kTextColor.withOpacity(0.4))),
                  Text("60,000원~",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: kTextColor)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
