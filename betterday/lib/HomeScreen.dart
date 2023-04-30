import 'package:betterday/CallScreenPatient.dart';
import 'package:flutter/material.dart';

import 'CourseScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 241, 219),
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          'Xin chào Tú!\nChúc bạn ngày mới tốt lành!',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontFamily: 'Times New Roman',
            height: 1.3,
          ), //style text),
          textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF063B28), Color(0xFF07D9AD)]),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Transform.scale(
              scale: 1.8, // Phóng to 1.5 lần
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/HomeScreen/ava.png'),
            ),
            // ignore: avoid_print
            onPressed: () => print('Image pressed'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/HomeScreen/timkiem.png',
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                      icon: Transform.scale(
                        scale: 3, // Phóng to 1.5 lần
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                            'assets/images/HomeScreen/icon_khoahoc.png'),
                      ),
                      // ignore: avoid_print
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CourseScreen()));
                      }),
                ),
                Expanded(
                  child: IconButton(
                      icon: Transform.scale(
                        scale: 3, // Phóng to 1.5 lần
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                            'assets/images/HomeScreen/icon_goidien.png'),
                      ),
                      // ignore: avoid_print
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CallScreenPatient()));
                      }),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    '\n\n\nKhóa học',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '\n\n\nGọi điện',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
