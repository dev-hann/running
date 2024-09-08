import 'package:flutter/material.dart';
import 'package:runner/model/record_item.dart';
import 'package:table_calendar/table_calendar.dart';

class RecordCalendar extends StatelessWidget {
  const RecordCalendar({
    super.key,
    required this.recordBuilder,
  });

  final List<RecordItem> Function(DateTime day) recordBuilder;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime(2000),
      lastDay: DateTime(2100),
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
      ),
      // eventLoader: recordBuilder,
    );
  }
}
