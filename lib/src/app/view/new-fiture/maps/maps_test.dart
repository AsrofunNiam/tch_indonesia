import 'dart:async';

import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsTest extends StatefulWidget {
  const MapsTest({super.key});

  @override
  State<MapsTest> createState() => _MapsTestState();
}

class _MapsTestState extends State<MapsTest> {
  final Completer<GoogleMapController> _createState = Completer();
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
  CircularMenu circularMenu() {
    return CircularMenu(
        toggleButtonColor: const Color.fromARGB(255, 132, 195, 240),
        alignment: Alignment.bottomLeft,
        backgroundWidget: Center(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 28),
              children: <TextSpan>[
                TextSpan(
                  text: _colorName,
                  style: TextStyle(color: _color, fontWeight: FontWeight.bold),
                ),
                // TextSpan(text: ' button is clicked.'),
              ],
            ),
          ),
        ),
        items: [
          CircularMenuItem(
              icon: Icons.home,
              color: Colors.green,
              onTap: () {
                setState(() {
                  _color = Colors.green;
                  _colorName = 'Green';
                });
              }),
          CircularMenuItem(
              icon: Icons.search,
              color: Colors.blue,
              onTap: () {
                setState(() {
                  _color = Colors.blue;
                  _colorName = 'Blue';
                });
              }),
          CircularMenuItem(
              icon: Icons.settings,
              color: Colors.orange,
              onTap: () {
                setState(() {
                  _color = Colors.orange;
                  _colorName = 'Orange';
                });
              }),
          CircularMenuItem(
              icon: Icons.chat,
              color: Colors.purple,
              onTap: () {
                setState(() {
                  _color = Colors.purple;
                  _colorName = 'Purple';
                });
              }),
          CircularMenuItem(
              icon: Icons.notifications,
              color: Colors.brown,
              onTap: () {
                setState(() {
                  _color = Colors.brown;
                  _colorName = 'Brown';
                });
              })
        ]);
  }

  String? _colorName;
  Color _color = Colors.black;

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
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.only(left: 20),
        child: circularMenu(),
      ),
    );
  }
}
