import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsTest extends StatefulWidget {
  const MapsTest({super.key});

  @override
  State<MapsTest> createState() => _MapsTestState();
}

class _MapsTestState extends State<MapsTest> {
  Completer<GoogleMapController> _createState = Completer();
  String googleKey = 'AIzaSyCICwChYERrvs8w6RUSXv-Ad9H82uZkcKU';
  final CameraPosition _kGoolePlex = const CameraPosition(
      target: LatLng(-6.244392, 106.776544), zoom: 14.4746);

  final Marker _kGooglePlexMarker = const Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Google Test'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(-6.244392, 106.776544),
  );
  final Marker _destination1Marker = const Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Google Test'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(-6.254591, 106.75719),
  );

  final Marker _destination2Marker = const Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Google Test'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(-6.234397, 106.678446),
  );

  List<LatLng> polyLineCoordinate = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleKey,
      PointLatLng(-6.244392, 106.776544),
      PointLatLng(-6.244392, 106.776544),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((element) =>
          polyLineCoordinate.add(LatLng(element.latitude, element.longitude)));
      setState(() {});
    }
  }

  @override
  void initState() {
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        markers: {_kGooglePlexMarker, _destination1Marker, _destination2Marker},
        initialCameraPosition: _kGoolePlex,
        onMapCreated: (controller) {
          _createState.complete(controller);
        },
        polylines: {
          Polyline(
              polylineId: PolylineId('route'),
              points: polyLineCoordinate,
              color: Colors.blue,
              width: 4)
        },
      ),
    );
  }
}
