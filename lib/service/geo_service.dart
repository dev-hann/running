import 'package:geolocator/geolocator.dart';

class GeoService {
  final _geoService = GeolocatorPlatform.instance;

  Stream get positionStream {
    // for (int index = 0; index < 1000000; index++) {
    //   await Future.delayed(Duration(seconds: 1));
    //   final position = await requestCurrentPosition();
    //   yield Position(
    //     longitude: position.longitude + (index / 10000),
    //     latitude: position.latitude + (index / 10000),
    //     timestamp: position.timestamp,
    //     accuracy: position.accuracy,
    //     altitude: position.altitude,
    //     altitudeAccuracy: position.altitudeAccuracy,
    //     heading: position.heading,
    //     headingAccuracy: position.headingAccuracy,
    //     speed: position.speed,
    //     speedAccuracy: position.speedAccuracy,
    //   );
    // }
    return _geoService.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    );
  }

  Future<Position> requestCurrentPosition() async {
    return _geoService.getCurrentPosition();
  }

  Future<bool> requestPermission() async {
    final permission = await _geoService.requestPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }
}
