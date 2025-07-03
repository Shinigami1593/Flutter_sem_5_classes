import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class AccelerometerView extends StatefulWidget {
  const AccelerometerView({super.key});

  @override
  State<AccelerometerView> createState() => _AccelerometerViewState();
}

class _AccelerometerViewState extends State<AccelerometerView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accelerometer')),
      body: Center(child: Text('Accelerometer : ')),
    );
  }
}
