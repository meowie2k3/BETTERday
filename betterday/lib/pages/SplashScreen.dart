import 'package:betterday/helper/helper_function.dart';
import 'package:betterday/pages/WelcomePage.dart';
import 'package:betterday/pages/HomeScreen.dart';
import 'package:betterday/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool loadedAssets = false;

  @override
  Widget build(BuildContext context) {
    if (loadedAssets == false) {
      HelperFunction().loadAssets().then((value) {
        setState(() {
          loadedAssets = true;
        });
      });
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return MyApp().isSignedIn ? HomeScreen() : WelcomePage();
    }
  }
}
