import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runner/controller/metronome_controller.dart';
import 'package:runner/controller/record_controller.dart';
import 'package:runner/view/metronome_view.dart';
import 'package:runner/widget/record_map.dart';

class RunningView extends StatefulWidget {
  const RunningView({
    super.key,
  });

  @override
  State<RunningView> createState() => _RunningViewState();
}

class _RunningViewState extends State<RunningView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecordController>(
      builder: (controller) {
        final runState = controller.state;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                controller.stopTimer();
                controller.stopRecord();
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: Get.width / 1.5,
                child: Builder(
                  builder: (context) {
                    final postion = runState.currentPosition;
                    if (postion == null) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return RecordMap(
                      position: postion,
                    );
                  },
                ),
              ),
              Text("Timer: ${runState.duration}"),
              const Text("Distance: 0.0 km"),
              Card(
                child: ListTile(
                  onTap: () {
                    if (runState.isRecording) {
                      controller.stopRecord();
                      controller.stopTimer();
                    } else {
                      controller.initRecord();
                      controller.initTimer();
                    }
                  },
                  title: Text(!runState.isRecording ? "Run!" : "Stop"),
                  trailing: const Icon(Icons.play_arrow),
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                child: GetBuilder<MetronomeController>(
                  builder: (controller) {
                    final state = controller.state;
                    return ListTile(
                      onTap: () {
                        Get.to(const MetronomeView());
                      },
                      title: const Text("Metronome"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${state.enable ? state.bpm : "Off"}",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 16.0,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
