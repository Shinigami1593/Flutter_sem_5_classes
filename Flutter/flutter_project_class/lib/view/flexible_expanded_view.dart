import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              // ignore: avoid_print
              onTap: () => print('container 1 pressed'),
              child: Container(
                // height: 400,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Text('Container ', style: TextStyle(fontSize: 30),),
              ),
            ),
          ),
          Expanded( // flex.loose + flex.tight ko byproduct
            child: GestureDetector(
              // ignore: avoid_print
              onDoubleTap: () => print('container 2 tapped'),
              child: Container(
                // height: 300,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.amber,
                child: Text('Container 2', style: TextStyle(fontSize: 30),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}