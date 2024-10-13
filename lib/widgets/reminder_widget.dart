
import 'package:flutter/material.dart';

class ReminderWidget extends StatelessWidget {
  final String reminderText;

  ReminderWidget({required this.reminderText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Reminder'),
      subtitle: Text(reminderText),
      trailing: Icon(Icons.notifications),
    );
  }
}
