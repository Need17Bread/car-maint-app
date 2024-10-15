import 'package:flutter/material.dart';
import 'utils/theme.dart';
import 'screens/garage_screen.dart';
import 'screens/log_screen.dart';
import 'screens/add_log_screen.dart';
import 'screens/vehicle_health_screen.dart';
import 'screens/settings_screen.dart';

void main() => runApp(CarMaintenanceApp());

class CarMaintenanceApp extends StatefulWidget {
  @override
  _CarMaintenanceAppState createState() => _CarMaintenanceAppState();
}

class _CarMaintenanceAppState extends State<CarMaintenanceApp> {
  ThemeMode _themeMode = ThemeMode.system;
  int _currentIndex = 0;  // Track the selected index for bottom navigation

  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      GarageScreen(),
      LogScreen(),
      AddLogScreen(),
      VehicleHealthScreen(),
      SettingsScreen(onThemeChange: _toggleTheme), // Pass theme toggle to Settings
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Maintenance',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: _themeMode,
      home: Scaffold(
        body: _screens[_currentIndex],  // Display the selected screen
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;  // Update index on tap
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.garage_outlined),
              selectedIcon: Icon(Icons.garage),
              label: 'Garage',
            ),
            NavigationDestination(
              icon: Icon(Icons.list_alt_outlined),
              selectedIcon: Icon(Icons.list_alt),
              label: 'Log',
            ),
            NavigationDestination(
              icon: Icon(Icons.add_circle_outline),
              selectedIcon: Icon(Icons.add_circle),
              label: 'Add Log',
            ),
            NavigationDestination(
              icon: Icon(Icons.health_and_safety_outlined),
              selectedIcon: Icon(Icons.health_and_safety),
              label: 'Health',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  // Function to toggle between light and dark themes
  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }
}
