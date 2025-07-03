import 'package:flutter/material.dart';

class MagnetometerView extends StatefulWidget {
  const MagnetometerView({super.key});

  @override
  State<MagnetometerView> createState() => _MagnetometerViewState();
}

class _MagnetometerViewState extends State<MagnetometerView> {
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
      appBar: AppBar(title: const Text('Magnetometer')),
      body: Center(
        child: Text('Magnetometer : ', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
