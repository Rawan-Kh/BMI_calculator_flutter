import 'package:starter_namer/view/main_screen.dart';
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
      title: 'BMI calculator',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 22, 13, 31),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF111328),
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
        ),
      ),
      home: const BmiScreen(),
    );
  }
}