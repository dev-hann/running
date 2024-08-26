import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
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

  int? soundID;

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
    soundID = await rootBundle
        .load("assets/audio/wood.wav")
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
  }

  Future _play(int bpm) async {
    final intervalMilSec = 60000 ~/ bpm;
    stop();
    _timer = Timer.periodic(Duration(milliseconds: intervalMilSec), (_) {
      if (soundID != null) {
        pool.play(soundID!);
      }
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
