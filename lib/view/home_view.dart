import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runner/controller/record_controller.dart';
import 'package:runner/view/running_view.dart';
import 'package:runner/widget/record_calendar.dart';
import 'package:runner/widget/record_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Runner",
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const RunningView());
        },
        child: const Icon(Icons.play_arrow),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: GetBuilder<RecordController>(
          builder: (controller) {
            final recordList = controller.loadRecordList(DateTime.now());
            print(recordList);
            return ListView(
              children: [
                Text(
                  "Records",
                  style: Get.textTheme.headlineSmall,
                ),
                Card(
                  child: Column(
                    children: [
                      RecordCalendar(
                        recordBuilder: (day) {
                          return [];
                        },
                      ),
                    ],
                  ),
                ),
                for (final record in recordList) RecordCard(),
              ],
            );
          },
        ),
      ),
    );
  }
}
