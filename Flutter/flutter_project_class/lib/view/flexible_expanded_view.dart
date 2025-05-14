import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.greenAccent,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}