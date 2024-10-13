
import 'package:flutter/material.dart';

class LogItem extends StatelessWidget {
  final String type;
  final String date;
  final double mileage;

  LogItem({required this.type, required this.date, required this.mileage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$type - $date'),
      subtitle: Text('Mileage: $mileage'),
    );
  }
}
