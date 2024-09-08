import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'record_item.freezed.dart';

@freezed
class RecordItem with _$RecordItem {
  factory RecordItem({
    required DateTime dateTime,
    required LatLng latlng,
  }) = _RecordItem;
}
