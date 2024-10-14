
import 'package:flutter/material.dart';

class GarageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Garage'),
        actions: [
        ],
      ),
      body: Center(
        child: Text('List of vehicles goes here'),
      ),
    );
  }
}
