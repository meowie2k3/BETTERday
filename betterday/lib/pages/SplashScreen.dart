import 'package:betterday/helper/helper_function.dart';
import 'package:betterday/pages/AuthPages/BotUI.dart';
import 'package:betterday/pages/AuthPages/LoginPage.dart';
import 'package:betterday/pages/WelcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _hasInternetPermission = false;
  bool _isSignedIn = false;
  Future<bool>? _initFuture;
  final String botUID = "f9ShBaviCFTTYvgb5F9ENjAqKzy1";

  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
    _initFuture = _init();
  }

  getUserLoggedInStatus() async {
    await HelperFunction.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

  Future<bool> _init() async {
    print("loading assets");
    await HelperFunction.loadAssets();
    print("done loading assets");
    await _checkInternetPermission();
    print(_hasInternetPermission);
    if (_hasInternetPermission == false) {
      await _requestInternetPermission();
    }
    return true;
  }

  Future<void> _checkInternetPermission() async {
    final status = await Permission.sensors.status;
    setState(() {
      _hasInternetPermission = status == PermissionStatus.granted;
    });
  }

  Future<void> _requestInternetPermission() async {
    final status = await Permission.sensors.request();
    setState(() {
      _hasInternetPermission = status == PermissionStatus.granted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<bool>(
        future: _initFuture,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icon/white_icon.png"),
                  const SizedBox(height: 20),
                  const CircularProgressIndicator(
                    color: Colors.black,
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            // handle error
            return const Text('Error!');
          } else {
            return _isSignedIn
                ? (botUID == FirebaseAuth.instance.currentUser!.uid
                    ? const BotUI()
                    : const WelcomePage())
                : const LoginPage();
          }
        },
      ),
    );
  }
}
