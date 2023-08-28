import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsTest extends StatefulWidget {
  const MapsTest({super.key});

  @override
  State<MapsTest> createState() => _MapsTestState();
}

class _MapsTestState extends State<MapsTest> {
  Completer<GoogleMapController> _createState = Completer();
  final CameraPosition _kGoolePlex = const CameraPosition(
      target: LatLng(37.4233223322, -122.0433434), zoom: 14.4746);

  final Marker _kGooglePlexMarker = const Marker(
    markerId: MarkerId('_kGooglePlex'),
    infoWindow: InfoWindow(title: 'Google Test'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(37.4233223322, -122.0433434),
  );

  final LatLng sourceLocation = const LatLng(106.7196769, -6.2839295);
  final LatLng sourceDestination = const LatLng(37.334229383, -122.006600055);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        markers: {_kGooglePlexMarker},
        initialCameraPosition: _kGoolePlex,
        onMapCreated: (controller) {
          _createState.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.directions_boat),
      ),
    );
  }
}
