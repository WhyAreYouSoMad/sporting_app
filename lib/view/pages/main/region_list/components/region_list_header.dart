import 'package:flutter/material.dart';
import 'package:sporting_app/core/constants/my_colors.dart';
import 'package:sporting_app/view/pages/main/map/map_page.dart';
import 'package:sporting_app/view/pages/main/region_list/components/region_list_favor_button.dart';

class RegionListHeader extends StatelessWidget {
  const RegionListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildChooseHeader(context),
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

  Row _buildChooseHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: InkWell(
              onTap: () {},
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
        Expanded(
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => MapPage()));
              },
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
      ],
    );
  }
}
