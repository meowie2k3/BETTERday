import 'package:betterday/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'WelcomePage.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigate to a new screen',
      home: HomeScreen(),
    );
  }
}
