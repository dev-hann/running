import 'dart:async';

import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class MetoronomService {
  Timer? _timer;

  bool get isPlaying {
    return _timer?.isActive ?? false;
  }

  final pool = Soundpool.fromOptions(
    options: const SoundpoolOptions(),
  );

  Future play(int bpm) async {
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

  void stop() {
    _timer?.cancel();
    _timer == null;
  }
}
