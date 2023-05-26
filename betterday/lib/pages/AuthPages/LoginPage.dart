import 'package:betterday/helper/helper_function.dart';
import 'package:betterday/pages/AuthPages/BotUI.dart';
import 'package:betterday/pages/AuthPages/RegisterPage.dart';
import 'package:betterday/pages/WelcomePage.dart';
import 'package:betterday/service/auth_service.dart';
import 'package:betterday/service/database_service.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:betterday/widgets/GradientCircle.dart';
import 'package:betterday/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String routeName = "/login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  AuthService authService = AuthService();

  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  final String botUID = "f9ShBaviCFTTYvgb5F9ENjAqKzy1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Positioned(
          top: -50,
          left: -100,
          child: GradientCircle(),
        ),
        const Positioned(
          top: 500,
          right: -200,
          child: DustyCircle(radius: 250),
        ),
        Transform.translate(
          offset: const Offset(0, -120),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                SizedBox(
                  width: 350,
                  height: 350,
                  child: Image.asset('assets/images/WelcomePage/mascot.png'),
                ),
              ])),
        ),
        _isLoading
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                    SizedBox(
                      height: 150,
                    ),
                    Center(child: CircularProgressIndicator())
                  ])
            : Transform.translate(
                offset: const Offset(0, 155),
                child: Center(
                    child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Đăng nhập để sử dụng\ndịch vụ của chúng tôi!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Google Sans',
                                fontSize: 25,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 350,
                              child: TextFormField(
                                  decoration: textInputDecoration.copyWith(
                                    labelText: "Email",
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Color(0xff07D9AD),
                                    ),
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      email = val;
                                      //print(email);
                                    });
                                  },
                                  validator: (val) {
                                    return RegExp(
                                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(val!)
                                        ? null
                                        : "Please enter a valid email";
                                  }),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 350,
                              child: TextFormField(
                                obscureText: true,
                                decoration: textInputDecoration.copyWith(
                                  labelText: "Password",
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Color(0xff07D9AD),
                                  ),
                                ),
                                validator: (val) {
                                  if (val!.length < 6) {
                                    return "Password must be at least 6 characters";
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (val) {
                                  setState(() {
                                    password = val;
                                    //print(password);
                                  });
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            //login button
                            Container(
                                width: 250,
                                height: 50,
                                child: ElevatedButton(
                                    onPressed: () {
                                      login();
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              const Color.fromARGB(
                                                  255, 23, 140, 99)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      "Đăng nhập",
                                      style: TextStyle(
                                        fontFamily: 'Google Sans',
                                        fontSize: 18,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ))),
                            const SizedBox(height: 15),
                            Text.rich(TextSpan(
                              text: "Chưa có tài khoản? ",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Đăng kí ngay!",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        nextScreen(
                                            context, const RegisterPage());
                                      }),
                              ],
                            )),
                          ],
                        ))),
              )
      ]),
    );
  }

  login() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .loginUserWithEmailAndPassword(email, password)
          .then((value) async {
        if (value == true) {
          print("Login success");
          QuerySnapshot snapshot =
              await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingUserData(email);
          // saving the values to our shared preferences
          await HelperFunction.saveUserLogginStatus(true);
          await HelperFunction.saveUserEmailSF(email);
          await HelperFunction.saveUserNameSF(snapshot.docs[0].get('fullname'));
          nextScreenReplace(
              context,
              FirebaseAuth.instance.currentUser!.uid == botUID
                  ? const BotUI()
                  : const WelcomePage());
        } else {
          showSnackbar(context, Colors.red, value);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}
