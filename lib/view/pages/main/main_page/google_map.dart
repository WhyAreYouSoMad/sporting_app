import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sporting_app/view/pages/main/main_page/google_map_body.dart';

class MyGoogleMap extends StatelessWidget {
  const MyGoogleMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: google(),
    );
  }
}
