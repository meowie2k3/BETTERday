import 'package:betterday/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'DustyCircle.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 214, 240, 234),

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
                  //button và khóa học tâm lý
                  const SizedBox(height: 25),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 25),
                      Positioned(
                        top: 50,
                        left: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 30,
                          height: 30,
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
                        ),
                      ),
                      const SizedBox(width: 45),
                      const Positioned(
                        top: 50,
                        left: 130,
                        child: Text(
                          'KHÓA HỌC TÂM LÝ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 27,
                            fontFamily: 'Google Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //text Bắt đầu từ những thứ đơn giản nhất
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      SizedBox(width: 15),
                      Positioned(
                        child: Text(
                          'Bắt đầu từ những thứ đơn giản nhất',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontFamily: 'Google Sans',
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //kết nối & trò chuyện
                  const SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      //icon nhà
                      const SizedBox(width: 15),
                      Positioned(
                        top: 50,
                        left: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF2753F3), Color(0xFF765AFC)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 50,
                          height: 50,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.home_filled,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //text kết nối
                      const SizedBox(width: 10),
                      const Positioned(
                        top: 50,
                        left: 130,
                        child: Text(
                          'Kết nối với ngôi nhà\ncủa chính bạn',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                            fontFamily: 'Google Sans',
                            //fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      //icon trò chuyện
                      const SizedBox(width: 6),
                      Positioned(
                        top: 50,
                        left: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFFFF484C), Color(0xFFFF6C60)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 50,
                          height: 50,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              //onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.call,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //text trò chuyện
                      const SizedBox(width: 10),
                      const Positioned(
                        top: 50,
                        left: 130,
                        child: Text(
                          'Trò chuyện với\nnhững người\nthích hợp',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                            fontFamily: 'Google Sans',
                            //fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Test & research
                  const SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      //icon nhà
                      const SizedBox(width: 15),
                      Positioned(
                        top: 50,
                        left: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFFFE7F44), Color(0xFFFFCF68)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 50,
                          height: 50,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.text_snippet_outlined,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //text kết nối
                      const SizedBox(width: 10),
                      const Positioned(
                        top: 50,
                        left: 130,
                        child: Text(
                          'Những bài kiểm tra\ntâm lí đơn giản',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                            fontFamily: 'Google Sans',
                            //fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      //icon trò chuyện
                      const SizedBox(width: 10),
                      Positioned(
                        top: 50,
                        left: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xFF0EBE7E), Color(0xFF07D9AD)]),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 50,
                          height: 50,
                          child: Transform.translate(
                            offset: const Offset(0, 0),
                            child: GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.zoom_in_outlined,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //text trò chuyện
                      const SizedBox(width: 10),
                      const Positioned(
                        top: 50,
                        left: 130,
                        child: Text(
                          'Tìm hiểu sâu hơn\nvề tâm lí học',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                            fontFamily: 'Google Sans',
                            //fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //khóa học đề cử
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      SizedBox(width: 15),
                      Positioned(
                        child: Text(
                          'Khóa học đề cử',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontFamily: 'Google Sans',
                            fontWeight: FontWeight.w500,
                            //fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Góc nhìn của Socrates
                  const SizedBox(height: 15),
                  Positioned(
                    top: 50,
                    left: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 400,
                      height: 300,
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
                    ),
                  ),
                ],
              ),
            ),
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
              icon: const Icon(Icons.home_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourseScreen()));
              },
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
