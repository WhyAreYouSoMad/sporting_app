import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_rating_star.dart';

List<Map<String, dynamic>> dataList = [
  {
    "title": "🏆 사직 야구장",
    "imageUrl": "assets/images/dummy/saa.jpg",
    "rating": 5.0,
    "reviewCount": 14241,
  },
  {
    "title": "🏆 양키 스타디움",
    "imageUrl": "assets/images/dummy/yan2.jpg",
    "rating": 5.0,
    "reviewCount": 12541,
  },
  {
    "title": "🏆 후쿠오카 돔",
    "imageUrl": "assets/images/dummy/huk.JPG",
    "rating": 4.0,
    "reviewCount": 8744,
  },
  {
    "title": "🏆 다저 스타디움",
    "imageUrl": "assets/images/dummy/LA.png",
    "rating": 2.5,
    "reviewCount": 14241,
  },
  {
    "title": "🏆 글로브 라이프 필드",
    "imageUrl": "assets/images/dummy/globe.jpg",
    "rating": 5.0,
    "reviewCount": 25547,
  },
];



Padding MapItemBox(Map<String, dynamic> data) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 5,
      bottom: 5,
      right: 10,
      left: 10,
    ),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
            bottomLeft: Radius.circular(16.0),
          )),
      width: 250,
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Column(
            children: [
              Text(
               data["title"],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 100,
                  width: 230,
                  child: Image.asset(
                      data["imageUrl"],
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 5),
                  MyRatingStar(
                    reviewCount: data["reviewCount"],
                    rating: data["rating"],
                    iconSize: 15,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 40,
                        color: Colors.pinkAccent,
                        child: Center(
                          child: Text("이달의", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 40,
                        color: Colors.white,
                        child: Center(
                          child: Text("추천", style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 50),
                  Text("보러가기", style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}