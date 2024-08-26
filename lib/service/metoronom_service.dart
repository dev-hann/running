import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

class MetoronomService {
  final audio = AudioPlayer();
  Timer? _timer;
  bool isPlaying = false;

  // bool get isPlaying {
  //   return _timer?.isActive ?? false;
  // }

  Future play(int bpm) async {
    final intervalMilSec = 60000 ~/ bpm;
    isPlaying = true;
    // while (isPlaying) {
    //   await Future.delayed(Duration(milliseconds: intervalMilSec));
    //   audio.play(AssetSource("audio/wood.wav"));
    //   }
    stop();
    _timer = Timer.periodic(Duration(milliseconds: intervalMilSec), (_) {
      print("###");
      // audio.play(AssetSource("audio/wood.wav"));
      SystemSound.play(SystemSoundType.click);
    });
    // }
  }

  void stop() {
    isPlaying = false;
    _timer?.cancel();
    _timer == null;
  }
}
