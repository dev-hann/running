import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'run_state.freezed.dart';

@freezed
class RunState with _$RunState {
  const RunState._();
  factory RunState({
    LatLng? currentPosition,
    @Default("") String recordKey,
    @Default(Duration.zero) Duration duration,
  }) = _RunState;

  bool get isRecording {
    return recordKey.isNotEmpty;
  }
}
