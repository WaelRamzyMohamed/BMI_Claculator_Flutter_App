//*************************************************************
// GDSC Flutter course - session 03 - Thursday, April 16, 2022
// Task 04 - BMI Calculator App
// by\ Wael Ramzy Mohamed, waelramzymohamed@gmail.com
//*************************************************************
import 'package:bmicalculator/view/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'BMI Calculator',
      home: MainScreen(),
    );;
  }
}

