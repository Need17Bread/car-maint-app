
import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String make;
  final String model;
  final int year;
  final double odometer;

  VehicleCard({required this.make, required this.model, required this.year, required this.odometer});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('$make $model ($year)'),
        subtitle: Text('Odometer: $odometer miles'),
      ),
    );
  }
}
