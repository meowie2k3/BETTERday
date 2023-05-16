import 'package:flutter/material.dart';
import 'package:betterday/service/auth_service.dart';
import 'package:betterday/service/database_service.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:betterday/widgets/GradientCircle.dart';
import 'package:betterday/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:betterday/pages/BotChatScreen.dart';
import 'package:betterday/helper/helper_function.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static const String routeName = '/register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isLoading = false;
  AuthService authService = AuthService();

  final formKey = GlobalKey<FormState>();
  // for register
  String email = "";
  String password = "";
  String fullname = "";


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: const Center(
        child: Text('Register Page'),
      ),
    );
  }

  register() async {
    if (formKey.currentState!.validate()) {
    setState(() {
      _isLoading = true;
    });
    await authService
        .registerUserWithEmailAndPassword(fullname, email, password)
        .then((value) async {
      if (value == true) {
        //saving the shared preference state
        print("Register success");
        await HelperFunction.saveUserLogginStatus(true);
        await HelperFunction.saveUserEmailSF(email);
        await HelperFunction.saveUserNameSF(fullname);
        nextScreenReplace(context, BotChat());
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(value),
            duration: const Duration(seconds: 5),
          ),
        );
        setState(() {
          _isLoading = false;
        });
      }
    });
    }
  }
}