import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';

class HonorStadiumPage extends StatelessWidget {
  const HonorStadiumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
        title: Text(
          "Company Sporting",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset("assets/images/logo/sporting.png",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(width: 35),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "App",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Sporting",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "MISSION",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "고객만족 고객가치 창출",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          _man(),
          // Divider(thickness: 1, height: 10),
          _man2(),
          _man3(),
          _man4(),
          _man5(),
        ],
      ),
    );
  }

  Container _man() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/dummy/red.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 130,
                        width: 130,
                        child: Image.asset("assets/images/dummy/on.png",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Text(
                    "사장 : 김태훈",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Full stack",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "지속적인 긍정적 사고는",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "능력을 배로 높인다.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 60),
                                Text("- 콜린 파월",style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kGrayColor,
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("현실에 안주하지 않고", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Text("다양한 도전을 펼쳐가겠습니다.", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _man2() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/dummy/ca.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "실수는 풍족한 삶을 위해",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "반드시 치러야 할 비용이다.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 60),
                                Text("- 소피아 로렌",style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kGrayColor,
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("더욱 쾌적하고 안전한", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Text("Sporting을 만들겠습니다.", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 130,
                        width: 130,
                        child: Image.asset("assets/images/dummy/yy.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Text(
                    "팀장 : 이상현",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Back-End",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _man3() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/dummy/gg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 130,
                        width: 130,
                        child: Image.asset("assets/images/dummy/bin.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Text(
                    "대리 : 임원빈",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Back-End",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "실패에 낙담 말라.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "긍정적인 경험이 될 수 있다.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 60),
                                Text("- 존 키츠",style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kGrayColor,
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("누구에게도 부끄럽지 않은", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Text("맞춤인제로 성장하겠습니다.", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _man4() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/dummy/fit.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "좋은 실수를 하는 방법은",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "실수를 숨기지 않는 것이다.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 60),
                                Text("- 양자역학",style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kGrayColor,
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("작은 일에서부터 큰 일까지", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Text("성실히 완수하겠습니다.", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 130,
                        width: 130,
                        child: Image.asset("assets/images/dummy/aa.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Text(
                    "부장 : 박지연",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Back-End",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _man5() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/dummy/rain.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: 130,
                        width: 130,
                        child: Image.asset("assets/images/dummy/da.jpg",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Text(
                    "사원 : 전국일",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Front-End",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              "우리의 인생은 우리가",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "노력한 만큼 가치가 있다.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                SizedBox(width: 60),
                                Text("- 모리악",style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  color: kGrayColor,
                                ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("배우고 익히며 즐겁게", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    Text("생활하는 개발자가 되겠습니다.", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}