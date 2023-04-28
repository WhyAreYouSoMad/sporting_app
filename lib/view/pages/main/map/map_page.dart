import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/map/components/map_body.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapBody(),
    );
  }
}