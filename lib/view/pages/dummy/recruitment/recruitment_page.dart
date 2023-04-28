import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/components/my_rating_star.dart';

class RecruitmentPage extends StatelessWidget {
  const RecruitmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/dummy/yankees.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                title: Text("이달의 구장"),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 330,
                      height: 250,
                      color: Colors.white,
                      child: PageView(
                        children: [
                          _buildImagePage("assets/images/dummy/yan.jpg"),
                          _buildImagePage("assets/images/dummy/yan2.jpg"),
                          _buildImagePage("assets/images/dummy/yankees.jpg"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      width: 330,
                      height: 340,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "양키 스타디움",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            MyRatingStar(
                              reviewCount: 121111,
                              rating: 5,
                              iconSize: 15,
                              textSize: 15,
                            ),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: 100,
                                  color: Colors.pinkAccent,
                                  child: Center(
                                    child: Text(
                                      "4월 명예구장",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 120,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      "🏆 4월 명예구장",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text("리뷰", style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            Divider(thickness: 1, color: kGrayColor),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyRatingStar(
                                  rating: 5,
                                  iconSize: 12,
                                  textSize: 12,
                                ),
                                Text("한국에... 양키 스타디움이??"),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyRatingStar(
                                  rating: 5,
                                  iconSize: 12,
                                  textSize: 12,
                                ),
                                Text("넓고 최고!!"),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyRatingStar(
                                  rating: 5,
                                  iconSize: 12,
                                  textSize: 12,
                                ),
                                Text("외국에서 야구를 보는 것 같아요"),
                              ],
                            ),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyRatingStar(
                                  rating: 5,
                                  iconSize: 12,
                                  textSize: 12,
                                ),
                                Text("구단명이 양키스?"),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      width: 150,
                      height: 120,
                      child: Image.asset("assets/images/logo/sporting.png",color: Colors.white,fit: BoxFit.cover))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImagePage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        imagePath,
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}