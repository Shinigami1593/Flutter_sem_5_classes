import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.greenAccent,
          ),
          Expanded( // flex.loose + flex.tight ko byproduct
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}