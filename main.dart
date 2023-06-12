import 'package:bmi_calculator/body.dart';
import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgcolor,
          title: Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: mybody()
      ),
    );
  }
}