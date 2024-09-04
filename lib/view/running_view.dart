import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runner/controller/metronome_controller.dart';
import 'package:runner/controller/run_controller.dart';
import 'package:runner/view/metronome_view.dart';

class RunningView extends StatefulWidget {
  const RunningView({
    super.key,
  });

  @override
  State<RunningView> createState() => _RunningViewState();
}

class _RunningViewState extends State<RunningView> {
  final runController = Get.put(RunController());
  final metrononeController = Get.put(MetronomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<RunController>(
        builder: (controller) {
          final state = controller.state;
          return Column(
            children: [
              Text("Timer: 00:00"),
              Text("Distance: 0.0 km"),
              const Card(
                child: ListTile(
                  title: Text("Run!"),
                  trailing: Icon(Icons.play_arrow),
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
          );
        },
      ),
    );
  }
}
