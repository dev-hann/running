import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
import 'package:metronome/metronome.dart';

class _BackgroundAudioService extends BaseAudioHandler {
  final metronomeService = MetoronomService();
  Future init() async {
    final item = MediaItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      album: 'Album name',
      title: 'Track title',
      artist: 'Artist name',
    );
    addQueueItem(item);
  }

  @override
  Future play() async {
    final bpm = await metronomeService.getBPM();
    metronomeService.play(bpm);
  }

  @override
  Future pause() async {
    metronomeService.stop();
  }

  @override
  Future stop() async {
    metronomeService.stop();
  }
}

class MetoronomService {
  final metronome = Metronome();
  static final backgroundAudioService = _BackgroundAudioService();
  static Future init() async {
    return AudioService.init(
      builder: () => backgroundAudioService,
      config: const AudioServiceConfig(
        androidNotificationChannelId: 'com.dev_hann.running.audio',
        androidNotificationChannelName: 'Music playback',
      ),
    );
  }

  Future setAudio() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    await backgroundAudioService.init();
  }

  Future play(int value) async {
    await metronome.play(value);
  }

  Future<bool> stop() {
    return metronome.stop();
  }

  Future<bool> setBPM(int value) {
    return metronome.setBPM(value);
  }

  Future<int> getBPM() {
    return metronome.getBPM();
  }
}
