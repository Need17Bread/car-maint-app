
import 'package:flutter/material.dart';
import 'screens/garage_screen.dart';
import 'screens/log_screen.dart';
import 'screens/add_log_screen.dart';
import 'screens/vehicle_health_screen.dart';
import 'screens/settings_screen.dart';

void main() => runApp(CarMaintenanceApp());

class CarMaintenanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Maintenance',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GarageScreen(),
      routes: {
        '/garage': (context) => GarageScreen(),
        '/log': (context) => LogScreen(),
        '/add-log': (context) => AddLogScreen(),
        '/vehicle-health': (context) => VehicleHealthScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
