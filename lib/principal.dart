import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super (key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State <Principal> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('FLUTTER COM MAPS'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(-23.5489, -46.6388), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/outdoors/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-23.5489, -46.6388),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.red),
                        ),
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng( -22.9035, -43.2096),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.blue),
                        ),
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-38.416097, -63.616672),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.purpleAccent),
                        ),
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng( -3.10719, -60.0261),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.brown),
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
