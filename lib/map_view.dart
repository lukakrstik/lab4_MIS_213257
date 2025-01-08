import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'models/exam_event.dart';

class MapView extends StatelessWidget {
  final ExamEvent event;

  MapView({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Map: ${event.subject}")),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(event.latitude, event.longitude),
          zoom: 14.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId(event.subject),
            position: LatLng(event.latitude, event.longitude),
            infoWindow: InfoWindow(
              title: event.subject,
              snippet: event.locationName,
            ),
          ),
        },
      ),
    );
  }
}