/* #############################################################
# Nhân quả không nợ chúng ta thứ gì, cho nên xin đừng oán giận #
#                            _                                 #
#                         _ooOoo_                              #
#                        o8888888o                             #
#                        88" . "88                             #
#                        (| -_- |)                             #
#                        O\  =  /O                             #
#                    ____ /'---'\____                          #
#                   '  \\|       |// '                         #
#                  '                  '                        #
#                 /   \\|||  :  |||//  \                       #
#                /   _||||| -:- |||||_  \                      #
#                |    | \\\  -  /// |   |                      #
#                |  \_| '\' --- '/' |   |                      #
#                \   .-\_ '- . -' _/-.  /                      #
#               ___'. .' / --.--\  ', ,'___                    #
#            .""/ <  '.___\_<|>_/___.' _> \"".                 #
#           | | :  '- \'. ;'. _/; .'/ /  .' ; |                #
#           \  \ '-.   \_\_'. _.'_/_/  -' _.' /                #
#============'-.'.__'-. \ \___   /__.-'_.'_.-'=================#
                           '-=--'
Đức Phật nơi đây phù hộ code con chạy không Bug. Nam mô a di đà phật
                        _.-/`)
                       // / / )
                    .=// / / / )
                   // / / / / /
                  ||         /
                   \\       /
                    ))    .'
                   //    /
                        / */

import 'package:betterday/pages/SplashScreen.dart';
import 'package:betterday/shared/constants.dart';
import 'package:betterday/helper/helper_function.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    //run the initialization for web
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constant.apiKey,
            appId: Constant.appId,
            messagingSenderId: Constant.messagingSenderId,
            projectId: Constant.projectId));
  } else {
    await Firebase.initializeApp();
  }

  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  bool _isSignedIn = false;

  bool get isSignedIn => _isSignedIn;

  set isSignedIn(bool value) {
    _isSignedIn = value;
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  void initState() {
    super.initState();
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunction.getUserLoggedInStatus().then((value) {
      if (value != null) {
        setState(() {
          MyApp()._isSignedIn = value;
        });
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
