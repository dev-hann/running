import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runner/controller/metronome_controller.dart';

class MetronomeView extends StatelessWidget {
  const MetronomeView({
    super.key,
  });

  AppBar appBar({
    required bool enable,
    required Function(bool value) onEnbleChanged,
  }) {
    return AppBar(
      title: const Text("Metronome"),
      actions: [
        Switch(
          value: enable,
          onChanged: onEnbleChanged,
        ),
      ],
    );
  }

  Widget bpmWidget({
    required int bpm,
    required VoidCallback onMinusTap,
    required VoidCallback onPlusTap,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: onMinusTap,
          child: const Text("-"),
        ),
        Text(
          bpm.toString(),
          style: Get.textTheme.headlineSmall,
        ),
        ElevatedButton(
          onPressed: onPlusTap,
          child: const Text("+"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MetronomeController>(
      builder: (controller) {
        final state = controller.state;
        return Scaffold(
          appBar: appBar(
            enable: state.enable,
            onEnbleChanged: (value) {
              controller.updateEnable(value);
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Builder(
              builder: (context) {
                if (!state.enable) {
                  return const Center(
                    child: Text("Please, Turn on Metronome"),
                  );
                }
                final bpm = state.bpm;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bpmWidget(
                      bpm: bpm,
                      onMinusTap: () {
                        controller.updateBpm(bpm - 5);
                      },
                      onPlusTap: () {
                        controller.updateBpm(bpm + 5);
                      },
                    ),
                    const SizedBox(height: 16.0),
                    Card(
                      child: Builder(builder: (context) {
                        final isPlaying = state.isPlaying;
                        return ListTile(
                          onTap: () {
                            if (isPlaying) {
                              controller.stopMetronome();
                            } else {
                              controller.playMetronome();
                            }
                          },
                          title: Text(
                            isPlaying ? "Stop" : "Play",
                          ),
                          trailing: Icon(
                            isPlaying ? Icons.stop : Icons.play_arrow,
                          ),
                        );
                      }),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
