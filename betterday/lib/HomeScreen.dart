import 'package:betterday/BotChatScreen.dart';
import 'package:betterday/CallScreenPatient.dart';
import 'package:flutter/material.dart';

import 'CourseScreen.dart';
import 'DustyCircle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 214, 240, 234),
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
                                          const CallScreenPatient()));
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
                      children: <Widget>[
                        //trang
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 190,
                          height: 245,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-guilherme-almeida-1858175.jpg',
                                      width: 190,
                                      height: 175,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 65),
                                      Text(
                                        'Trang',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 5,
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 50),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 149, 149, 149),
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //thu
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 190,
                          height: 245,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-moose-photos-1587009.jpg',
                                      width: 190,
                                      height: 175,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 80),
                                      Text(
                                        'Thu',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 5,
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 50),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //nghĩa
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 190,
                          height: 245,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-mushtaq-hussain-15242467.jpg',
                                      width: 190,
                                      height: 175,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 70),
                                      Text(
                                        'Nghĩa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 5,
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 50),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 149, 149, 149),
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //ngọc
                        const SizedBox(width: 15),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 190,
                          height: 245,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/ChuyenGiaNoiBat/pexels-ruslan-sikunov-16542850.jpg',
                                      width: 190,
                                      height: 175,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 70),
                                      Text(
                                        'Ngọc',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      CircleAvatar(
                                        backgroundColor: Colors.green,
                                        radius: 5,
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 50),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFF959595),
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),
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
                      children: <Widget>[
                        //Linh
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.7',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-andrea-piacquadio-774909.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Linh',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Được tài trợ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Minh
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xFF959595),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.8',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-bianca-1322543.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Minh',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 25.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Trí
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xFF959595),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-jc-laurio-1288182.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Trí',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 20.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Thu
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.6',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-juliana-stein-1898555.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Thu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 22.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Nhân
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.9',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-nur-andi-ravsanjani-gusma-974266.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Nhân',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 23.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),
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
                      children: <Widget>[
                        //Dũng
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.9',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-serhii-volyk-15237921.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Dũng',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 23.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

//Thu
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.6',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-juliana-stein-1898555.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Thu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 22.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

//Minh
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xFF959595),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.8',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-bianca-1322543.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Minh',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 25.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

//Linh
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.7',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-andrea-piacquadio-774909.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Linh',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Được tài trợ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

//Trí
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 96,
                          height: 130,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () {},
                              child: Column(
                                children: <Widget>[
                                  const SizedBox(height: 5),
                                  Row(
                                    children: const <Widget>[
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xFF959595),
                                        size: 10,
                                      ),
                                      SizedBox(width: 40),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xFFFEAF20),
                                        size: 12,
                                      ),
                                      Text(
                                        '3.2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 10,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      'assets/images/HomeScreen/NguoiLangNghePhuHop/pexels-jc-laurio-1288182.jpg',
                                      width: 55,
                                      height: 55,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Trí',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Từ 20.000 VNĐ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF677294),
                                      fontSize: 9,
                                      fontFamily: 'Google Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),
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
                    MaterialPageRoute(builder: (context) => const BotChat()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
