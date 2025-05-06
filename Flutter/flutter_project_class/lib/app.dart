import 'package:flutter/material.dart';
import 'package:flutter_project_class/view/add.dart';
import 'package:flutter_project_class/view/circle.dart';
import 'package:flutter_project_class/view/first_view.dart';
import 'package:flutter_project_class/view/interest.dart';
import 'package:flutter_project_class/view/palindrome.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Task",
      home: FirstView(),
      routes: {
        '/add' : (context) => const AddNumbers(),
        '/circle':(context) => Circle(),
        '/interest':(context) => SimpleInterest(),
        '/palindrome':(context) => PalindromeNumber(),

      },
    );
  }
}