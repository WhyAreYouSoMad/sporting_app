import 'package:flutter/cupertino.dart';
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
                    _buildChooseResion('서울', seoul),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('경기', gyeonggi),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('인천', incheon),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('강원', Gangwon),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('제주', Jeju),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('광주', gwangju),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('대구', Daegu),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('부산', busan),
                    const Divider(thickness: 2, height: 0),
                    _buildChooseResion('울산', Ulsan),
                    const Divider(thickness: 2, height: 0),
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

  InkWell _buildChooseResion(String resion, List<Area> area) {
    return InkWell(
      onTap: () {
        setState(() {
          areas = area;
          selectedAreas = selectedAreas.map((e, v) => MapEntry(e, v = false));
          selectedAreas[resion] = true;
        });
      },
      child: Container(
        color: selectedAreas[resion]! ? Colors.white : Colors.grey[300],
        height: 50,
        child: Center(
          child: Text(
            resion,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
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
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Color(0xFFCCCCCC),
            width: 1.0,
          ))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                areas[index].area,
                style: const TextStyle(
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
                      child: const SizedBox(
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
                      child: const SizedBox(
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
                _AreaCard("해운대구", Icons.home),
                _AreaCard("동래구 / 사하구", Icons.home),
                _AreaCard("연제구", Icons.home),
                _AreaCard("사상구", Icons.home),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card _AreaCard(String resion, IconData icon) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(
            color: Color(0xFFCCCCCC),
          )),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: icon == Icons.home ? Colors.blue[800] : Colors.redAccent,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Icon(
                  icon,
                  size: 15,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                resion,
                style: const TextStyle(
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
