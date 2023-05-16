import 'package:betterday/pages/HomeScreen.dart';
import 'package:betterday/service/auth_service.dart';
import 'package:betterday/widgets/GradientCircle.dart';
import 'package:flutter/material.dart';

import 'package:betterday/widgets/DustyCircle.dart';

class BotChat extends StatefulWidget {
  const BotChat({Key? key}) : super(key: key);

  @override
  State<BotChat> createState() => _BotChatState();
}

class _BotChatState extends State<BotChat> {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Positioned(
          top: -50,
          left: -70,
          child: GradientCircle(),
        ),
        const Positioned(
          top: 450,
          right: -230,
          child: DustyCircle(radius: 250),
        ),
        Positioned(
            top: MediaQuery.of(context).padding.top + 20,
            left: 30,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 25,
              height: 25,
              child: Transform.translate(
                offset: const Offset(4, 0),
                child: GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen())),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF677294),
                  ),
                ),
              ),
            )),
        Positioned(
          top: MediaQuery.of(context).padding.top + 20,
          left: MediaQuery.of(context).size.width / 2 - 60,
          child: const Text(
            'TRÒ CHUYỆN',
            style: TextStyle(
              fontFamily: 'Google Sans',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: ElevatedButton(
            child: const Text("LOGOUT"),
            onPressed: () {
              authService.signOut();
            },
            )
          )
      ]),
    );
  }
}
