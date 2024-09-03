import 'package:freezed_annotation/freezed_annotation.dart';

part 'metronome_state.freezed.dart';

@freezed
class MetronomeState with _$MetronomeState {
  const factory MetronomeState({
    @Default(false) bool enable,
    @Default(170) int bpm,
    @Default(false) bool isPlaying,
  }) = _MetronomeState;
}
