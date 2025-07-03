import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class GyroscopeView extends StatefulWidget {
  const GyroscopeView({super.key});

  @override
  State<GyroscopeView> createState() => _GyroscopeViewState();
}

class _GyroscopeViewState extends State<GyroscopeView> {
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
      appBar: AppBar(title: const Text('Gyroscope')),
      body: Center(
        child: Text('Gyroscope : ', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
