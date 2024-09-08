import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CalendarController extends GetxController {
  DateTime? selectedDateTime;
  @override
  void onReady() {
    selectedDateTime = DateTime.now();
  }
}
