import 'package:flutter/material.dart';

class RecordCard extends StatelessWidget {
  const RecordCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        title: Text("Test Text"),
      ),
    );
  }
}
