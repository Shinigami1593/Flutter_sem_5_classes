import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/add'),
            child: const Text("Add Two Numbers"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/circle'),
            child: const Text("Area of Circle"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/interest'),
            child: const Text("Simple Interest"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/palindrome'),
            child: const Text("Palindrome Number"),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            color: const Color.fromARGB(255, 255, 184, 184),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('data'),
                    Text('data'),
                  ],
                ),

                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text('data'),
                    Text('data'),
                  ],
                ),

                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    Text('data'),
                    Text('data'),
                  ],
                ),

                SizedBox(
                  width: 40,
                ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}