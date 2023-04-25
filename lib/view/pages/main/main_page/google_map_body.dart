import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class google extends StatefulWidget {
  const google({Key? key}) : super(key: key);

  @override
  State<google> createState() => _googleState();
}

class _googleState extends State<google> {


  static final LatLng sportingLatLng = LatLng(35.194029, 129.061236);
  static final CameraPosition initialPositoion =
  CameraPosition(target: sportingLatLng, zoom: 15);

  @override
  Widget build(BuildContext context) {
    return  GoogleMap(
      initialCameraPosition: initialPositoion,
    );
  }
}
