import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runner/view/running_view.dart';
import 'package:runner/widget/record_calendar.dart';
import 'package:runner/widget/record_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

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
        child: ListView(
          children: [
            Text(
              "Records",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Card(
              child: Column(
                children: [
                  RecordCalendar(),
                ],
              ),
            ),
            RecordCard(),
          ],
        ),
      ),
    );
  }
}
