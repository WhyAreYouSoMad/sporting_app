import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapBody extends StatefulWidget {
  const MapBody({Key? key}) : super(key: key);

  @override
  State<MapBody> createState() => _MapBodyState();
}

class _MapBodyState extends State<MapBody> {
  static final LatLng sportingLatLng = LatLng(35.194029, 129.061236);
  static final CameraPosition initialPosition =
  CameraPosition(target: sportingLatLng, zoom: 15);

  @override
  Widget build(BuildContext context) {
    return  GoogleMap(
      initialCameraPosition: initialPosition,
    );
  }
}