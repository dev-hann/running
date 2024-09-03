import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
import 'package:metronome/metronome.dart';

class MetoronomService extends BaseAudioHandler {
  MetoronomService._();

  static final _instance = MetoronomService._();
  static MetoronomService get instance {
    return _instance;
  }

  Future init() {
    return AudioService.init(
      builder: () => this,
      config: const AudioServiceConfig(
        androidNotificationChannelId: 'com.dev_hann.running.audio',
        androidNotificationChannelName: 'Music playback',
      ),
    );
  }

  final metronome = Metronome();

  Future setAudio() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    final item = MediaItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      album: 'Album name',
      title: 'Track title',
      artist: 'Artist name',
    );
    addQueueItem(item);
  }

  Future _play(int bpm) async {
    await metronome.play(bpm);
  }

  Future<bool> _stop() {
    return metronome.stop();
  }

  @override
  Future<void> play() {
    return _play(170);
  }

  @override
  Future<void> pause() async {
    await _stop();
  }

  @override
  Future<void> stop() async {
    await _stop();
  }
}
