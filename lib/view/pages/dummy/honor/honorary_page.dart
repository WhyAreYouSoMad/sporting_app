import 'package:flutter/material.dart';

class HonoraryPage extends StatelessWidget {
  const HonoraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/dummy/son.jpg"),
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
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "🏆",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              "4월 명예의 전당",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "🏆",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "소속 : ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                "부산 조기축구회",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "이름 : 손흥민",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "나이 : 30",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "종목 : 축구",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 150),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    width: 130,
                                    height: 30,
                                    color: Colors.grey[100],
                                    child: Center(
                                      child: Text(
                                        "Sporting 최다골",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "67",
                              style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "골",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "7일 Sporting 경기에서 5골로 신기록",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "30일 만에 명예의 전당 진입!",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 60),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Image.asset("assets/images/logo/sporting.png",color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 30),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Container(
                                            width: 130,
                                            height: 30,
                                            color: Colors.grey[100],
                                            child: Center(
                                              child: Text(
                                                "총 능력치",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: 7),
                                    Row(
                                      children: [
                                        Text(
                                          "속력 : 95",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 7),
                                    Row(
                                      children: [
                                        Text(
                                          "가속력 : 90",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 7),
                                    Row(
                                      children: [
                                        Text(
                                          "골 결정력 : 97",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 7),
                                    Row(
                                      children: [
                                        Text(
                                          "패스 : 89",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 7),
                                    Row(
                                      children: [
                                        Text(
                                          "중거리 슛 : 79",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 7),
                                    Row(
                                      children: [
                                        Text(
                                          "위치 선정 : 88",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}