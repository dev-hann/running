import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runner/controller/run_controller.dart';
import 'package:runner/widget/record_map.dart';

class RunningView extends StatefulWidget {
  const RunningView({
    super.key,
  });

  @override
  State<RunningView> createState() => _RunningViewState();
}

class _RunningViewState extends State<RunningView> {
  final controller = Get.put(RunController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<RunController>(
        builder: (controller) {
          return Column(
            children: [
              Card(
                child: SizedBox(
                  height: Get.height / 2.5,
                  child: Builder(
                    builder: (context) {
                      final currentPosition = controller.currentPosition;
                      if (currentPosition == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return RecordMap(
                        position: currentPosition,
                      );
                    },
                  ),
                ),
              ),
              Text("Timer: 00:00"),
              Text("Distance: 0.0 km"),
              ElevatedButton(
                onPressed: () {
                  if (controller.isMetronomePlaying) {
                    controller.stopMetronome();
                  } else {
                    controller.playMetronome();
                  }
                },
                child: Text("Metronome"),
              ),
            ],
          );
        },
      ),
    );
  }
}
