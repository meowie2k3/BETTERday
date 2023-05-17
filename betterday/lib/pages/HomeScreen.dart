import 'package:betterday/pages/AuthPages/BotUI.dart';
import 'package:betterday/pages/BotChatScreen.dart';
import 'package:betterday/pages/CallScreenPatient.dart';
import 'package:betterday/widgets/BigBoxInHomeScreen.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:betterday/widgets/SmallBoxInHomeScreen.dart';
import 'package:flutter/material.dart';

import 'CourseScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 214, 240, 234),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        title: const Text(
          'Xin chào Tú!\nChúc bạn ngày mới tốt lành!',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontFamily: 'Google Sans',
            height: 1.3,
          ), //style text),
          textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          Container(
            width: 60,
            height: 60,
            margin:
                const EdgeInsetsDirectional.only(end: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Transform.translate(
              offset: const Offset(0, 0),
              child: GestureDetector(
                //onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/HomeScreen/pexels-vinicius-wiesehofer-1130626.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            const Positioned(
              top: -200,
              left: -200,
              child: DustyCircle(radius: 250),
            ),
            const Positioned(
              top: 450,
              right: -230,
              child: DustyCircle(radius: 250),
            ),
            Transform.translate(
              offset: const Offset(0, 0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //tìm kiếm
                  const SizedBox(height: 145),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Tìm kiếm điều bạn đang bận tâm...',
                        hintStyle: TextStyle(
                          color: Color(0xFF677294),
                          fontSize: 15,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w400,
                        ),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 30,
                        ),
                      ),
                    ),
                  ),

                  //box tài nguyên và lắng nghe
                  const SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      //button tài nguyên
                      const SizedBox(width: 65),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF1FAE7B), Color(0xFF07D9AD)]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 80,
                        height: 80,
                        child: Transform.translate(
                          offset: const Offset(0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CourseScreen()));
                            },
                            child: const Icon(
                              Icons.menu_book_outlined,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 50,
                            ),
                          ),
                        ),
                      ),

                      //button lắng nghe
                      const SizedBox(width: 105),
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF1FAE7B), Color(0xFF07D9AD)]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 80,
                        height: 80,
                        child: Transform.translate(
                          offset: const Offset(0, 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CallScreenPatient()));
                            },
                            child: const Icon(
                              Icons.call,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //text tài nguyên và lắng nghe
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      //text tài nguyên
                      SizedBox(width: 60),
                      Text(
                        'Tài nguyên',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0EBE7F),
                          fontSize: 18,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //text lắng nghe
                      SizedBox(width: 100),
                      Text(
                        'Lắng nghe',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0EBE7F),
                          fontSize: 18,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),

                  //text chuyên gia nổi bật
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      //text chuyên gia nổi bật
                      SizedBox(width: 10),
                      Text(
                        'Chuyên gia nổi bật',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //text xem tất cả
                      SizedBox(width: 135),
                      Text(
                        'Xem tất cả >  ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF677294),
                          fontSize: 12,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),

                  //hình ảnh chuyên gia nổi bật
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const <Widget>[
                        //trang
                        SizedBox(width: 10),
                        BigBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-guilherme-almeida-1858175.jpg',
                            name: 'Trang',
                            numStar: 4),

                        //thu
                        SizedBox(width: 15),
                        BigBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-moose-photos-1587009.jpg',
                            name: 'Thu',
                            numStar: 5),

                        //nghĩa
                        SizedBox(width: 15),
                        BigBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-mushtaq-hussain-15242467.jpg',
                            name: 'Nghĩa',
                            numStar: 4),

                        //ngọc
                        SizedBox(width: 15),
                        BigBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-ruslan-sikunov-16542850.jpg',
                            name: 'Ngọc',
                            numStar: 4),

                        SizedBox(width: 10),
                      ],
                    ),
                  ),

                  //Text Người lắng nghe phù hợp
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      //text người lắng nghe phù hợp
                      SizedBox(width: 10),
                      Text(
                        'Người lắng nghe phù hợp',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //text xem tất cả
                      SizedBox(width: 75),
                      Text(
                        'Xem tất cả >  ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF677294),
                          fontSize: 12,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),

                  //Ảnh người lắng nghe phù hợp
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const <Widget>[
                        //Linh
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-andrea-piacquadio-774909.jpg',
                            name: 'Linh',
                            isFavorite: true,
                            numStar: 3.7,
                            cost: 'Được tài trợ'),

                        //Minh
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-bianca-1322543.jpg',
                            name: 'Minh',
                            isFavorite: false,
                            numStar: 3.8,
                            cost: 'Từ 25.000 VNĐ'),

                        //Trí
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-jc-laurio-1288182.jpg',
                            name: 'Trí',
                            isFavorite: false,
                            numStar: 3.2,
                            cost: 'Từ 20.000 VNĐ'),

                        //Thu
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-juliana-stein-1898555.jpg',
                            name: 'Thu',
                            isFavorite: true,
                            numStar: 3.6,
                            cost: 'Từ 22.000 VNĐ'),

                        //Nhân
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-nur-andi-ravsanjani-gusma-974266.jpg',
                            name: 'Nhân',
                            isFavorite: true,
                            numStar: 3.9,
                            cost: 'Từ 23.000 VNĐ'),

                        SizedBox(width: 10),
                      ],
                    ),
                  ),

                  //Dành cho bạn
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      //text người lắng nghe phù hợp
                      SizedBox(width: 10),
                      Text(
                        'Dành cho bạn',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //text xem tất cả
                      SizedBox(width: 180),
                      Text(
                        'Xem tất cả >  ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF677294),
                          fontSize: 12,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),

                  //Ảnh dành cho bạn
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const <Widget>[
                        //Dũng
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-serhii-volyk-15237921.jpg',
                            name: 'Dũng',
                            isFavorite: true,
                            numStar: 3.9,
                            cost: 'Từ 23.000 VNĐ'),

                        //Thu
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-juliana-stein-1898555.jpg',
                            name: 'Thu',
                            isFavorite: true,
                            numStar: 3.6,
                            cost: 'Từ 22.000 VNĐ'),

                        //Minh
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-bianca-1322543.jpg',
                            name: 'Minh',
                            isFavorite: false,
                            numStar: 3.8,
                            cost: 'Từ 25.000 VNĐ'),

                        //Linh
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-andrea-piacquadio-774909.jpg',
                            name: 'Linh',
                            isFavorite: true,
                            numStar: 3.7,
                            cost: 'Được tài trợ'),

                        //Trí
                        SizedBox(width: 10),
                        SmallBoxInHomeScreen(
                            imageLink:
                                'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-jc-laurio-1288182.jpg',
                            name: 'Trí',
                            isFavorite: false,
                            numStar: 3.2,
                            cost: 'Từ 20.000 VNĐ'),

                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
            //child: Stack(children: <Widget>[
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
                    MaterialPageRoute(builder: (context) => const BotUI()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
