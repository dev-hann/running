import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class RecordMap extends StatelessWidget {
  const RecordMap({
    super.key,
    required this.position,
  });
  final LatLng position;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: MapController(),
      options: MapOptions(
        initialCenter: position,
        initialZoom: 17,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.runner',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: position,
              child: const Icon(
                Icons.circle,
                size: 20.0,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
