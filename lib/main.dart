//import 'package:fitness_app/boardingscreen.dart';
import 'package:fitness_app/maintab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(primaryColor: Colors.blue, fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: MainTab(),
    );
  }
}
