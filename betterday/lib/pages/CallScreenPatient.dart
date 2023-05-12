import 'package:flutter/material.dart';

class CallScreenPatient extends StatelessWidget {
  const CallScreenPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 148, 241, 219),
        appBar: AppBar(
          title: const Text('Call Screen Patient'),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF063B28), Color(0xFF07D9AD)]),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ));
  }
}
