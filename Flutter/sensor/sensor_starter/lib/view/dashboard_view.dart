import 'package:flutter/material.dart';
import 'package:sensor_starter/view/accelerometer_view.dart';
import 'package:sensor_starter/view/barometer_view.dart';
import 'package:sensor_starter/view/gyroscope_view.dart';
import 'package:sensor_starter/view/magnetometer_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sensors')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccelerometerView()),
              );
            },
            child: const Text('Accelerometer', style: TextStyle(fontSize: 24)),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GyroscopeView()),
              );
            },
            child: const Text('Gyroscope', style: TextStyle(fontSize: 24)),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MagnetometerView()),
              );
            },
            child: const Text('Magnetometer', style: TextStyle(fontSize: 24)),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amber),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BarometerView()),
              );
            },
            child: const Text('Barometer', style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
