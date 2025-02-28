import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googlemaps extends StatelessWidget {
   Googlemaps({super.key, required this.deliveryLocation});
LatLng deliveryLocation;
  @override
  Widget build(BuildContext context) {
    return     Expanded(
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: deliveryLocation,
          zoom: 15,
        ),
        markers: {
          Marker(
            markerId: MarkerId("delivery_person"),
            position: deliveryLocation,
            infoWindow: InfoWindow(title: "🚴‍♂️ The representative’s website"),
          ),
        },
      ),
    );
  }
}
