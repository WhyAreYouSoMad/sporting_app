import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/region_list/components/region_list_body.dart';
import 'package:sporting_app/view/pages/main/region_list/components/region_list_header.dart';

class RegionListPage extends StatelessWidget {
  const RegionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 105,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        title: RegionListHeader(),
        elevation: 4,
      ),
      body: RegionListBody(),
    );
  }
}
