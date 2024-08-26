import 'dart:async';

import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';

// import 'package:audioplayers/audioplayers.dart';

class MetoronomService {
  final audio = AudioPlayer();
  Timer? _timer;

  bool get isPlaying {
    return _timer?.isActive ?? false;
  }

  Future play(int bpm) async {
    final intervalMilSec = 60000 ~/ bpm;
    stop();
    _timer = Timer.periodic(Duration(milliseconds: intervalMilSec), (_) {
      SystemSound.play(SystemSoundType.click);
    });
  }

  void stop() {
    _timer?.cancel();
    _timer == null;
  }
}
