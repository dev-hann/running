import 'package:get/get.dart';
import 'package:runner/model/metronome_state.dart';
import 'package:runner/service/metoronom_service.dart';

class MetronomeController extends GetxController {
  final metoronomService = MetoronomService();

  MetronomeState state = const MetronomeState();

  @override
  void onReady() async {
    await metoronomService.setAudio();
  }

  void _updateState(MetronomeState value) {
    state = value;
    update();
  }

  void updateEnable(bool value) {
    _updateState(
      state.copyWith(
        enable: value,
      ),
    );
    stopMetronome();
  }

  void updateBpm(int value) async {
    _updateState(
      state.copyWith(
        bpm: value,
      ),
    );
    final isPlaying = state.isPlaying;
    await stopMetronome();
    if (isPlaying) {
      await playMetronome();
    }
  }

  Future playMetronome() {
    _updateState(
      state.copyWith(isPlaying: true),
    );
    return metoronomService.play(state.bpm);
  }

  Future stopMetronome() {
    _updateState(
      state.copyWith(isPlaying: false),
    );
    return metoronomService.stop();
  }
}
