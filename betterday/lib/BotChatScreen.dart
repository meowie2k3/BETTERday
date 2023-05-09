import 'package:betterday/GradientCircle.dart';
import 'package:flutter/material.dart';

import 'DustyCircle.dart';

class BotChat extends StatelessWidget {
  const BotChat({Key? key}) : super(key: key);

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
                  onTap: () => Navigator.pop(context),
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
      ]),
    );
  }
}
