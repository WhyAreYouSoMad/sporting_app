import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_area.dart';

class RegionListBody extends StatefulWidget {
  const RegionListBody({Key? key}) : super(key: key);

  @override
  State<RegionListBody> createState() => _RegionListBodyState();
}

class _RegionListBodyState extends State<RegionListBody> {
  List<Area> areas = seoul;

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
    return Row(
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
                  _buildChooseResion('강원', gangwon),
                  const Divider(thickness: 2, height: 0),
                  _buildChooseResion('제주', jeju),
                  const Divider(thickness: 2, height: 0),
                  _buildChooseResion('광주', gwangju),
                  const Divider(thickness: 2, height: 0),
                  _buildChooseResion('대구', daegu),
                  const Divider(thickness: 2, height: 0),
                  _buildChooseResion('부산', busan),
                  const Divider(thickness: 2, height: 0),
                  _buildChooseResion('울산', ulsan),
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
              ),
            ),
          ),
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
}
