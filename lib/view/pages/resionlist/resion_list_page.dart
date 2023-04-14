import 'package:flutter/material.dart';
import 'package:sporting_app/view/common/constants.dart';
import 'package:sporting_app/view/pages/resionlist/resion_dummy.dart';
import 'package:sporting_app/view/pages/resionlist/resion_dummy.dart';

import 'resion_dummy.dart';

class ResionListPage extends StatefulWidget {


  const ResionListPage({Key? key}) : super(key: key);

  @override
  State<ResionListPage> createState() => _ResionListPageState();
}

class _ResionListPageState extends State<ResionListPage> {
  List<Area> areas = seoul;
  // Map<Area, bool> selectedAreas = {
  //   seoul[0]: false,
  //   gyeonggi[0]: false,
  // };
  Map<String, bool> selectedAreas = {
    '서울': true,
    '경기': false,
    '인천': false,
    '강원': false,
    '광주': false,
    '제주': false,
    '대구': false,
    '부산': false,
    '울산': false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _indexAppbar0(),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = seoul;
                          selectedAreas['서울'] = true;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        color: selectedAreas['서울']! ? Colors.white : Colors.grey[300],
                        height: 50,
                        child: Center(
                          child: Text("서울", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 2, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = gyeonggi;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = true;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        color: selectedAreas['경기']! ? Colors.white : Colors.grey[300],
                        height: 50,
                        child: Center(
                          child: Text("경기", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = Incheon;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = true;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        color: selectedAreas['인천']! ? Colors.white : Colors.grey[300],
                        height: 50,
                        child: Center(
                          child: Text("인천", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = Gangwon;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = true;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        color: selectedAreas['강원']! ? Colors.white : Colors.grey[300],
                        child: Center(
                          child: Text("강원", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = gwangju;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = true;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        color: selectedAreas['광주']! ? Colors.white : Colors.grey[300],
                        height: 50,
                        child: Center(
                          child: Text("광주", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = Jeju;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = true;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        color: selectedAreas['제주']! ? Colors.white : Colors.grey[300],
                        height: 50,
                        child: Center(
                          child: Text("제주", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = Daegu;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = true;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        color: selectedAreas['대구']! ? Colors.white : Colors.grey[300],
                        height: 50,
                        child: Center(
                          child: Text("대구", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = busan;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = true;
                          selectedAreas['울산'] = false;
                        });
                      },
                      child: Container(
                        color: selectedAreas['부산']! ? Colors.white : Colors.grey[300],

                        height: 50,
                        child: Center(
                          child: Text("부산", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),Divider(thickness: 1, height: 0),
                    InkWell(
                      onTap: () {
                        setState(() {
                          areas = Ulsan;
                          selectedAreas['서울'] = false;
                          selectedAreas['경기'] = false;
                          selectedAreas['인천'] = false;
                          selectedAreas['강원'] = false;
                          selectedAreas['광주'] = false;
                          selectedAreas['제주'] = false;
                          selectedAreas['대구'] = false;
                          selectedAreas['부산'] = false;
                          selectedAreas['울산'] = true;
                        });
                      },
                      child: Container(
                        color: selectedAreas['울산']! ? Colors.white : Colors.grey[300],
                        height: 50,
                        child: Center(
                          child: Text("울산", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ),
                      ),
                    ),
                    Divider(thickness: 1, height: 0),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: areas.length,
              itemBuilder: (context, index) => _gu(index, areas),
            ),
          ),
        ],
      ),
    );
  }

  InkWell _gu(int index, List<Area> areas) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFFCCCCCC),
                width: 1.0,
              )
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(areas[index].area, style: TextStyle(
                fontSize: 14,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _indexAppbar0() {
    return AppBar(
      toolbarHeight: 105,
      backgroundColor: Colors.white,
      shadowColor: Colors.grey,
      title: Column(
        children: [
          Container(
            // alignment: Alignment.center,
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        child: Center(
                          child: Text(
                            "지역별",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 0,
                    color: Colors.white,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        child: Center(
                          child: Text(
                            "지도 검색",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: Color(0xFFCCCCCC)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _AreaCard(),
                _AreaCard(),
                _AreaCard(),
                _AreaCard(),
                _AreaCard(),
                _AreaCard(),
                _AreaCard(),
                _AreaCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card _AreaCard() {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
            color: Color(0xFFCCCCCC),
          )),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 30,
          width: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Icon(
                  Icons.home,
                  size: 15,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "강원도",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
