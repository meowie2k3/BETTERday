import 'package:betterday/pages/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:betterday/service/auth_service.dart';
import 'package:betterday/service/database_service.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:betterday/widgets/GradientCircle.dart';
import 'package:betterday/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  Stream? groups;


  @override
  Widget build (BuildContext context) {
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
              children:const [
                SizedBox(height: 150,),
                Center(child: CircularProgressIndicator())
                ])
            :
        Transform.translate(
          offset: const Offset(0, 155),
          child: Center(
              child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                            decoration: textInputDecoration.copyWith(
                              labelText: "Họ và tên",
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Color(0xff07D9AD),
                              ),
                            ),
                            onChanged: (val) {
                              setState(() {
                                fullname = val;
                                //print(email);
                              });
                            },
                            validator: (val) {
                              if (val!.isNotEmpty) {
                              return null;
                            } else {
                              return "Name cannot be empty";
                            }
                            }),
                      ),
                      const SizedBox(height: 20,),
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
                                register();
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color.fromARGB(255, 23, 140, 99)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Đăng kí",
                                style: TextStyle(
                                  fontFamily: 'Google Sans',
                                  fontSize: 18,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w400,
                                ),
                              ))),
                    ],
                  ))),
        )
      ]),
    );
  }

  createGroup() async {
    DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .createGroup(fullname, FirebaseAuth.instance.currentUser!.uid, fullname);
    //showSnackbar(context, Colors.green, "Group created successfully");
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
        await createGroup();
        nextScreenReplace(context, WelcomePage());
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