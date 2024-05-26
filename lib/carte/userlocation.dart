/*import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Location de l\'utilisateur')),
        body: Center(
          child: Text(''),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  Position? position;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        position == null ? 'Obtenir la position...' : 'Latitude: ${position.latitude}, Longitude: ${position.longitude}',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
*/