import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/componunts/rating_star.dart';
import 'package:sporting_app/view/pages/main/main_holder.dart';

class SportGameList extends StatelessWidget {
  final String sportName;

  const SportGameList(this.sportName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
        width: double.infinity,
        color: kPrimaryColor,
        child: ListView(
          children: [
            _buildStadiumCard(context),
            _buildStadiumCard(context),
            _buildStadiumCard(context),
            _buildStadiumCard(context),
          ],
        ),
      ),
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
                  Container(
                    height: 160,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                      child:
                          Image.asset("assets/billiardhall.jpg", fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text("테니스장", style: Theme.of(context).textTheme.titleLarge?.copyWith(color: kTextColor)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: RatingStar(rating: 3, reviewCount: 300),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("1시간 | ", style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: kTextColor.withOpacity(0.4))),
                        Text("60,000원~", style: Theme.of(context).textTheme.titleLarge?.copyWith(color: kTextColor)),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          );
  }
}
