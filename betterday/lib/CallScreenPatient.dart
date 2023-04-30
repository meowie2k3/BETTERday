import 'package:flutter/material.dart';

class CallScreenPatient extends StatelessWidget {
  const CallScreenPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Call Screen Patient'),
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
