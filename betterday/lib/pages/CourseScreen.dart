import 'package:betterday/pages/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'package:betterday/widgets/DustyCircle.dart';

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
            const Positioned(
              top: 900,
              left: -200,
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
                      Container(
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
                      const SizedBox(width: 45),
                      const Text(
                        'KHÓA HỌC TÂM LÝ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 27,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),

                  //text Bắt đầu từ những thứ đơn giản nhất
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      SizedBox(width: 15),
                      Text(
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
                    ],
                  ),

                  //kết nối & trò chuyện
                  const SizedBox(height: 15),
                  Row(
                    children: <Widget>[
                      //icon nhà
                      const SizedBox(width: 15),
                      Container(
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
                            //onTap: () {},
                            child: const Icon(
                              Icons.home_filled,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      //text kết nối
                      const SizedBox(width: 10),
                      const Text(
                        'Kết nối với ngôi nhà\ncủa chính bạn',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontFamily: 'Google Sans',
                          //fontWeight: FontWeight.w700,
                        ),
                      ),
                      //icon trò chuyện
                      const SizedBox(width: 6),
                      Container(
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
                            //onTap: () {},
                            child: const Icon(
                              Icons.call,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      //text trò chuyện
                      const SizedBox(width: 10),
                      const Text(
                        'Trò chuyện với\nnhững người\nthích hợp',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontFamily: 'Google Sans',
                          //fontWeight: FontWeight.w700,
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
                      Container(
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
                            //onTap: () {},
                            child: const Icon(
                              Icons.text_snippet_outlined,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      //text kết nối
                      const SizedBox(width: 10),
                      const Text(
                        'Những bài kiểm tra\ntâm lí đơn giản',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontFamily: 'Google Sans',
                          //fontWeight: FontWeight.w700,
                        ),
                      ),
                      //icon trò chuyện
                      const SizedBox(width: 10),
                      Container(
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
                            //onTap: () {},
                            child: const Icon(
                              Icons.zoom_in_outlined,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      //text trò chuyện
                      const SizedBox(width: 10),
                      const Text(
                        'Tìm hiểu sâu hơn\nvề tâm lí học',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontFamily: 'Google Sans',
                          //fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),

                  //khóa học đề cử
                  const SizedBox(height: 15),
                  Row(
                    children: const <Widget>[
                      SizedBox(width: 15),
                      Text(
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
                    ],
                  ),

                  //Góc nhìn của Socrates
                  const SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 360,
                    height: 370,
                    child: Transform.translate(
                      offset: const Offset(0, 0),
                      child: GestureDetector(
                        //onTap: () {},
                        child: Column(
                          children: <Widget>[
                            //title
                            const SizedBox(height: 15),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  'Góc nhìn của Socrates',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //description
                            const SizedBox(height: 10),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  'Bao gồm 40+ bài học từ vị triết gia lỗi lạc',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF677294),
                                    fontSize: 14,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //image
                            const SizedBox(height: 15),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/CourseScreen/socratesmethod.jpg',
                                width: 360,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),

                            //cost
                            const SizedBox(height: 15),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  '14.999 VNĐ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(width: 55),
                                Text(
                                  '24.999 VNĐ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF677294),
                                    fontSize: 16,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'ƯU ĐÃI CÓ HẠN!',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 222, 12, 12),
                                    fontSize: 10,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //2button
                            const SizedBox(height: 15),
                            Row(
                              children: <Widget>[
                                //button học thử
                                const SizedBox(width: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0EBE7F),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 150,
                                  height: 32,
                                  child: Transform.translate(
                                    offset: const Offset(0, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Học thử miễn phí',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w500,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //button mua ngay
                                const SizedBox(width: 80),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0EBE7F),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 100,
                                  height: 32,
                                  child: Transform.translate(
                                    offset: const Offset(0, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Mua ngay',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w500,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Bài học từ  “Nhà giả kim”
                  const SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 360,
                    height: 370,
                    child: Transform.translate(
                      offset: const Offset(0, 0),
                      child: GestureDetector(
                        //onTap: () {},
                        child: Column(
                          children: <Widget>[
                            //title
                            const SizedBox(height: 15),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  'Bài học từ  “Nhà giả kim”',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //description
                            const SizedBox(height: 10),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  'Khám phá hành trình tìm kiếm chân lý của Santiago',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF677294),
                                    fontSize: 14,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //image
                            const SizedBox(height: 15),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/CourseScreen/10-bai-hoc-dat-gia-tu-nha-gia-kim-elleman-1.jpg',
                                width: 360,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),

                            //cost
                            const SizedBox(height: 15),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  '19.999 VNĐ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(width: 55),
                                Text(
                                  '29.999 VNĐ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF677294),
                                    fontSize: 16,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'ƯU ĐÃI CÓ HẠN!',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 222, 12, 12),
                                    fontSize: 10,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //2button
                            const SizedBox(height: 15),
                            Row(
                              children: <Widget>[
                                //button học thử
                                const SizedBox(width: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0EBE7F),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 150,
                                  height: 32,
                                  child: Transform.translate(
                                    offset: const Offset(0, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Học thử miễn phí',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w500,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //button mua ngay
                                const SizedBox(width: 80),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0EBE7F),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 100,
                                  height: 32,
                                  child: Transform.translate(
                                    offset: const Offset(0, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Mua ngay',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w500,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Nhìn khổ đau bằng con mắt tỉnh thức
                  const SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 360,
                    height: 385,
                    child: Transform.translate(
                      offset: const Offset(0, 0),
                      child: GestureDetector(
                        //onTap: () {},
                        child: Column(
                          children: <Widget>[
                            //title
                            const SizedBox(height: 15),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  'Nhìn khổ đau bằng con mắt tỉnh thức',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //description
                            const SizedBox(height: 10),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  'Đôi khi chúng ta chỉ cần nhìn thế giới bằng con mắt\nkhác',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF677294),
                                    fontSize: 14,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //image
                            const SizedBox(height: 15),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/CourseScreen/thay-minh-niem-nhin-kho-dau-bang-con-mat-tinh-thuc-38b906f5c4414a0890292624ce91874d.jpg',
                                width: 360,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),

                            //cost
                            const SizedBox(height: 15),
                            Row(
                              children: const <Widget>[
                                SizedBox(width: 15),
                                Text(
                                  '24.999 VNĐ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 18,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(width: 55),
                                Text(
                                  '34.999 VNĐ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF677294),
                                    fontSize: 16,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.lineThrough,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'ƯU ĐÃI CÓ HẠN!',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 222, 12, 12),
                                    fontSize: 10,
                                    fontFamily: 'Google Sans',
                                    fontWeight: FontWeight.w500,
                                    //fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),

                            //2button
                            const SizedBox(height: 15),
                            Row(
                              children: <Widget>[
                                //button học thử
                                const SizedBox(width: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0EBE7F),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 150,
                                  height: 32,
                                  child: Transform.translate(
                                    offset: const Offset(0, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Học thử miễn phí',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w500,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                //button mua ngay
                                const SizedBox(width: 80),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF0EBE7F),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 100,
                                  height: 32,
                                  child: Transform.translate(
                                    offset: const Offset(0, 0),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Mua ngay',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 15,
                                          fontFamily: 'Google Sans',
                                          fontWeight: FontWeight.w500,
                                          //fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),
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
