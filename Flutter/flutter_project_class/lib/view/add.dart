import 'package:flutter/material.dart';

class AddNumbers extends StatefulWidget {
  const AddNumbers({super.key});

  @override
  State<AddNumbers> createState() => _AddNumbersState();
}

class _AddNumbersState extends State<AddNumbers> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          TextField(
            onChanged: (value) {
              first = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter first no",
            ),
          ),
          SizedBox(height: 8),
          TextField(
            onChanged: (value) {
              second = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter second no",
            ),
          ),
          SizedBox(height: 8),
          SizedBox(height: 8),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  result = first + second;
                });
              },
              child: Text("Add"),
            ),
          ),
          SizedBox(height: 8),

          Text("Result : $result", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}