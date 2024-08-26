import 'dart:async';

import 'package:flutter/services.dart';
import 'package:reliable_interval_timer/reliable_interval_timer.dart';

class MetoronomService {
  ReliableIntervalTimer? _timer;

  bool get isPlaying {
    return _timer?.isRunning ?? false;
  }

  Future play(int bpm) async {
    final intervalMilSec = 60000 ~/ bpm;
    stop();
    ReliableIntervalTimer(
      interval: Duration(milliseconds: intervalMilSec),
      callback: (elapsedMilliseconds) {
        SystemSound.play(SystemSoundType.click);
      },
    );
  }

  void stop() {
    _timer?.stop();
    _timer == null;
  }
}
