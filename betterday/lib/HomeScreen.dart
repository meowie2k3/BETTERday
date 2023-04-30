import 'package:betterday/CallScreenPatient.dart';
import 'package:flutter/material.dart';

import 'CourseScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigate to the second screen when tapped.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CourseScreen()),
              );
            },
            child: const Text('Course screen'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the second screen when tapped.
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CallScreenPatient()),
              );
            },
            child: const Text('Call Screen Patient'),
          ),
        ],
      )),
    );
  }
}
