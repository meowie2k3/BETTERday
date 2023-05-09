import 'package:betterday/BotChatScreen.dart';
import 'package:betterday/CallScreenPatient.dart';
import 'package:flutter/material.dart';

import 'CourseScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 241, 219),
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
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/HomeScreen/timkiem.png',
            ),
            //tài nguyên và lắng nghe
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Expanded(
                  child: IconButton(
                      icon: Transform.scale(
                        scale: 2.5, // Phóng to 1.5 lần
                        //alignment: Alignment.topCenter,
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
                        scale: 2.5, // Phóng to 1.5 lần
                        //alignment: Alignment.topCenter,
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
            const SizedBox(height: 25),
            Row(
              children: const <Widget>[
                Expanded(
                  child: Text(
                    'Tài nguyên',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF0EBE7F),
                      fontSize: 18,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Lắng nghe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF0EBE7F),
                      fontSize: 18,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            //chuyên gia nổi bật
            const SizedBox(height: 15),
            Row(
              children: const <Widget>[
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Chuyên gia nổi bật',
                    textAlign: TextAlign.left,
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
                    'Xem tất cả >  ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF677294),
                      fontSize: 12,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/ChuyenGiaNoiBat/trang.png'),
                  const SizedBox(width: 15),
                  Image.asset(
                      'assets/images/HomeScreen/ChuyenGiaNoiBat/thu.png'),
                  const SizedBox(width: 15),
                  Image.asset(
                      'assets/images/HomeScreen/ChuyenGiaNoiBat/nghia.png'),
                  const SizedBox(width: 15),
                  Image.asset(
                      'assets/images/HomeScreen/ChuyenGiaNoiBat/phuong.png'),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            //Người lắng nghe phù hợp
            const SizedBox(height: 15),
            Row(
              children: const <Widget>[
                SizedBox(width: 10),
                Flexible(
                  flex: 3,
                  child: Text(
                    'Người lắng nghe phù hợp',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 35),
                Expanded(
                  child: Text(
                    'Xem tất cả >  ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF677294),
                      fontSize: 12,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/hung.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/an.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/xuan.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/dung.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/truc.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/mai.png'),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            //Dành cho bạn
            const SizedBox(height: 15),
            Row(
              children: const <Widget>[
                SizedBox(width: 10),
                Flexible(
                  flex: 1,
                  child: Text(
                    'Dành cho bạn',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 95),
                Expanded(
                  child: Text(
                    'Xem tất cả >  ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF677294),
                      fontSize: 12,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/mai.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/truc.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/hung.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/xuan.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/dung.png'),
                  const SizedBox(width: 10),
                  Image.asset(
                      'assets/images/HomeScreen/NguoiLangNghePhuHop/an.png'),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourseScreen()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BotChat()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
