
import 'package:flutter/material.dart';

class HealthBar extends StatelessWidget {
  final double percentage;

  HealthBar({required this.percentage});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: percentage,
      backgroundColor: Colors.red,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }
}
