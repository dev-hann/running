import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

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

  Timer? _timer;

  bool get isPlaying {
    return _timer?.isActive ?? false;
  }

  final pool = Soundpool.fromOptions(
    options: const SoundpoolOptions(),
  );

  Future _play(int bpm) async {
    final soundID = await rootBundle
        .load("assets/audio/wood.wav")
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    print(soundID);
    final intervalMilSec = 60000 ~/ bpm;
    stop();
    _timer = Timer.periodic(Duration(milliseconds: intervalMilSec), (_) {
      pool.play(soundID);
      print(soundID);
    });
  }

  void _stop() {
    _timer?.cancel();
    _timer == null;
  }

  @override
  Future<void> play() {
    return _play(170);
  }

  @override
  Future<void> pause() async {
    return _stop();
  }

  @override
  Future<void> stop() async {
    return _stop();
  }
}
