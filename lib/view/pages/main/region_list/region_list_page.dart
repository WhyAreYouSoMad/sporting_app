import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/pages/main/region_list/components/region_list_body.dart';
import 'package:flutter_final_project_practice/view/pages/main/region_list/components/region_list_header.dart';

class RegionListPage extends StatelessWidget {
  const RegionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 105,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        title: const RegionListHeader(),
        elevation: 4,
      ),
      body: RegionListBody(),
    );
  }
}
