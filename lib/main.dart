import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:runner/controller/calendar_controller.dart';
import 'package:runner/controller/metronome_controller.dart';
import 'package:runner/controller/record_controller.dart';
import 'package:runner/service/metoronom_service.dart';
import 'package:runner/view/home_view.dart';

Future<void> main() async {
  await MetoronomService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Runner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      onInit: () {
        Get.put(RecordController());
        Get.put(MetronomeController());
        Get.put(CalendarController());
      },
      home: const HomeView(),
    );
  }
}
