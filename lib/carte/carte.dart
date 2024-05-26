import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Carte extends StatefulWidget {
  const Carte({super.key});
  
  @override
  State<Carte> createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  static const LatLng _pIAI = LatLng(3.8133954079889154, 11.557913709008744);
  static const LatLng _pTsinga = LatLng(3.8841974044902536, 11.506308134111965);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carte'),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: _pIAI,
          zoom: 14,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('IAI Centre Yaoundé'),
            icon: BitmapDescriptor.defaultMarker,
            position: _pIAI,
          ),
          const Marker(
            markerId: MarkerId('Mosquée Tsinga'),
            icon: BitmapDescriptor.defaultMarker,
            position: _pTsinga,
          ),
        },
      ),
    );
  }
}