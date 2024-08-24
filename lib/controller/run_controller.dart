import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import 'package:latlong2/latlong.dart';
import 'package:runner/service/geo_service.dart';
import 'package:runner/service/metoronom_service.dart';

class RunController extends GetxController {
  final metoronomService = MetoronomService();
  final geoService = GeoService();
  bool isMetronomePlaying = false;
  LatLng? currentPosition;

  @override
  void onReady() async {
    final isEnable = await geoService.requestPermission();
    if (isEnable) {
      final currentPosition = await geoService.requestCurrentPosition();
      updatePosition(currentPosition);
      geoService.positionStream.listen((position) {
        updatePosition(position);
      });
    }
  }

  @override
  void onClose() {
    stopMetronome();
  }

  void updatePosition(Position value) {
    currentPosition = LatLng(value.latitude, value.longitude);
    update();
  }

  void playMetronome() {
    isMetronomePlaying = true;
    metoronomService.play(170);
  }

  void stopMetronome() {
    isMetronomePlaying = false;
    metoronomService.stop();
  }
}
