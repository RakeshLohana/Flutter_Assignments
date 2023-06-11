import 'package:flutter/material.dart';
import 'package:flutter_open_street_map/flutter_open_street_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      
      
      home: StreetMap(),
    );
  }
}

class StreetMap extends StatelessWidget {
  const StreetMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Google office locations'),
        centerTitle: true,
      ),
      body: FlutterOpenStreetMap(
          center: LatLong(24.9324, 67.1127),
          onPicked: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
          }),
    );
  }
}
