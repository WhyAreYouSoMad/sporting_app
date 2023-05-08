import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sporting_app/view/components/my_rating_star.dart';
import 'package:sporting_app/view/pages/main/map/components/map_itme_box.dart';

class MapBody extends StatefulWidget {
  const MapBody({Key? key}) : super(key: key);

  @override
  State<MapBody> createState() => _MapBodyState();
}

class _MapBodyState extends State<MapBody> {
  static final LatLng sportingLatLng = LatLng(35.194029, 129.061236);
  static final CameraPosition initialPosition =
  CameraPosition(target: sportingLatLng, zoom: 15);

  late GoogleMapController _mapController;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: initialPosition,
          zoomControlsEnabled: false,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          onMapCreated: (GoogleMapController controller) {
            _mapController = controller;
          },
        ),
        Positioned(
            top: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () async {
                Position? currentPosition;
                try {
                  currentPosition = await Geolocator.getCurrentPosition();
                } catch (e) {
                  print('Could not get location : $e');
                }

                if (currentPosition != null) {
                  LatLng latLng = LatLng(
                    currentPosition.latitude,
                    currentPosition.longitude,
                  );
                  CameraPosition position =
                  CameraPosition(target: latLng, zoom: 15);
                  _mapController
                      .animateCamera(CameraUpdate.newCameraPosition(position));
                }
              },
              child: Icon(Icons.my_location),
            )),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Container(
            height: 210,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: dataList.map((data) => MapItemBox(data)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
