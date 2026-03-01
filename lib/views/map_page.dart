import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map Page')),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-3.71839, -38.5434),

          initialZoom: 12,
          minZoom: 3,
          maxZoom: 18,
          interactionOptions: const InteractionOptions(
            flags:
                InteractiveFlag.pinchZoom |
                InteractiveFlag.doubleTapZoom |
                InteractiveFlag.drag,
          ),
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png',
            userAgentPackageName: 'dev.fleaflet.flutter_map.example',
          ),
        ],
      ),
    );
  }
}
