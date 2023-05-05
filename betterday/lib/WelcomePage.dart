// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:betterday/HomeScreen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
            height: 350,
            child: Image.network('https://i.imgur.com/OliMevp.png'),
          ),
          const Text(
            'Xin chào Tú!\nHôm nay của bạn thế nào?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Google Sans',
              fontSize: 23,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Rate 1");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF12D38D)),
                    ),
                    child: Transform.scale(
                      scale:
                          3.5, // Adjust this value to scale the image up or down
                      child: Image.network('https://i.imgur.com/UQB0TYm.png'),
                    ),
                  )),
              const SizedBox(width: 5),
              SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Rate 2");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF12D38D)),
                    ),
                    child: Transform.scale(
                      scale:
                          3.5, // Adjust this value to scale the image up or down
                      child: Image.network('https://i.imgur.com/1ufDJ4E.png'),
                    ),
                  )),
              const SizedBox(width: 5),
              SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Rate 3");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF12D38D)),
                    ),
                    child: Transform.scale(
                      scale:
                          3.5, // Adjust this value to scale the image up or down
                      child: Image.network('https://i.imgur.com/Obdcq5i.png'),
                    ),
                  )),
              const SizedBox(width: 5),
              SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Rate 4");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF12D38D)),
                    ),
                    child: Transform.scale(
                      scale:
                          3.5, // Adjust this value to scale the image up or down
                      child: Image.network('https://i.imgur.com/CQ3tPRC.png'),
                    ),
                  )),
              const SizedBox(width: 5),
              SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Rate 5");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF12D38D)),
                    ),
                    child: Transform.scale(
                      scale:
                          3.5, // Adjust this value to scale the image up or down
                      child: Image.network('https://i.imgur.com/TQFekcJ.png'),
                    ),
                  )),
              const SizedBox(width: 5),
              SizedBox(
                  width: 45,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      print("Rate 6");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF12D38D)),
                    ),
                    child: Transform.scale(
                      scale:
                          3.5, // Adjust this value to scale the image up or down
                      child: Image.network('https://i.imgur.com/5637DkS.png'),
                    ),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
