import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';
import 'package:flutter_final_project_practice/view/pages/main/region_list/components/region_list_favor_button.dart';

class RegionListHeader extends StatelessWidget {
  const RegionListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildChooseHeader(),
        const Divider(thickness: 1, color: kBoarderColor),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RegionListFavorButton(region: "해운대구"),
              RegionListFavorButton(region: "동래구 / 사하구"),
              RegionListFavorButton(region: "연제구"),
              RegionListFavorButton(region: "사상구"),
            ],
          ),
        ),
      ],
    );
  }

  Row _buildChooseHeader() {
    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: const Center(
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
        Expanded(
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: const Center(
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
      ],
    );
  }
}
