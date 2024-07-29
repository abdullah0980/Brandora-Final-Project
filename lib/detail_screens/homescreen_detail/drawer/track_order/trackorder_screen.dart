import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackOrder_Screen extends StatefulWidget {
  const TrackOrder_Screen({super.key});

  @override
  State<TrackOrder_Screen> createState() => _TrackOrder_ScreenState();
}

class _TrackOrder_ScreenState extends State<TrackOrder_Screen> {
  static final CameraPosition _KGooglePlex = const CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        compassEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: _KGooglePlex,
      ),


    );
  }
}
