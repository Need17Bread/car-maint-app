import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final VoidCallback onThemeChange;

  SettingsScreen({required this.onThemeChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Column(
        children: [
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                onThemeChange(); // Call the function to toggle the theme
              },
            ),
          ),
        ],
      ),
    );
  }
}
