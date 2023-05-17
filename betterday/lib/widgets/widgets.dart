import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFC0F6E2),
  labelStyle: TextStyle(color: Colors.black),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 209, 0, 0), width: 1.5),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const messageInputDecoration = InputDecoration(
  hintText: "Bạn chat gì đi...",
  filled: true,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(27.0)),
    borderSide: BorderSide(color: Color(0xFF0EBE7E)),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
});
}

void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(fontSize: 14),
      ),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: "OK",
        onPressed: () {},
        textColor: Colors.white,
      ),
    ),
  );
}