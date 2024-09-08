import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import 'package:latlong2/latlong.dart';
import 'package:runner/model/record_item.dart';
import 'package:runner/model/run_state.dart';
import 'package:runner/service/geo_service.dart';

class RecordController extends GetxController {
  final geoService = GeoService();
  RunState state = RunState();
  Timer? _timer;

  @override
  void onReady() async {
    final isEnable = await geoService.requestPermission();
    if (isEnable) {
      final currentPosition = await geoService.requestCurrentPosition();
      updateCurrentPostion(currentPosition);
      geoService.positionStream.listen((position) {
        updateCurrentPostion(position);
        updateRecord(position);
      });
    }
  }

  @override
  void onClose() {}

  void updateState(RunState value) {
    state = value;
    update();
  }

  void initRecord() {
    updateState(
      state.copyWith(
        recordKey: DateTime.now().millisecondsSinceEpoch.toString(),
      ),
    );
  }

  void stopRecord() {
    updateState(
      state.copyWith(
        recordKey: "",
      ),
    );
  }

  void updateRecord(Position value) {
    final recordKey = state.recordKey;
    if (recordKey.isNotEmpty) {
      final recordItem = RecordItem(
        dateTime: DateTime.now(),
        latlng: LatLng(value.latitude, value.longitude),
      );
      geoService.updateRecord(
        record: recordItem,
      );
    }
  }

  List<RecordItem> loadRecordList(DateTime dateTime) {
    return geoService.loadRecordList(dateTime);
  }

  void updateCurrentPostion(Position value) {
    updateState(
      state.copyWith(
        currentPosition: LatLng(value.latitude, value.longitude),
      ),
    );
  }

  void initTimer() {
    stopTimer();
    _timer = Timer.periodic(Duration(seconds: 1), (tick) {
      updateState(
        state.copyWith(
          duration: Duration(seconds: tick.tick),
        ),
      );
    });
  }

  void stopTimer() {
    _timer?.cancel();
    _timer = null;
  }
}
