import 'package:betterday/pages/AuthPages/BotUI.dart';
import 'package:betterday/pages/BotChatScreen.dart';
import 'package:betterday/pages/HomeScreen.dart';
import 'package:betterday/widgets/CourseBox.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  String username;
  String email;
  CourseScreen({
    Key? key,
    required this.email,
    required this.username,
  }) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
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
                  const SizedBox(height: 45),
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

                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //icon nhà vs sách
                      const SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            //icon nhà
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF2753F3),
                                    Color(0xFF765AFC)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 50,
                              height: 50,
                              child: Center(
                                child: GestureDetector(
                                  child: const Icon(
                                    Icons.home_filled,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),

                            //icon sách
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFFE7F44),
                                      Color(0xFFFFCF68)
                                    ]),
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
                          ],
                        ),
                      ),

                      //text kết nối vs test
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: const <Widget>[
                            //text kết nối
                            Center(
                              child: Text(
                                'Kết nối với ngôi nhà của chính bạn',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15,
                                  fontFamily: 'Google Sans',
                                  //fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

                            //text test
                            SizedBox(height: 15),
                            Center(
                              child: Text(
                                'Những bài kiểm tra tâm lí đơn giản',
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
                      ),

                      //icon call vs research
                      const SizedBox(width: 15),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            //icon trò chuyện
                            Container(
                              //margin: const EdgeInsets.symmetric(horizontal: 70),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFFF484C),
                                      Color(0xFFFF6C60)
                                    ]),
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

                            //icon research
                            const SizedBox(height: 15),
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFF0EBE7E),
                                      Color(0xFF07D9AD)
                                    ]),
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
                          ],
                        ),
                      ),

                      //text trò chuyện vs research
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: const <Widget>[
                            //text trò chuyện
                            Text(
                              'Trò chuyện với những người thích hợp',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 15,
                                fontFamily: 'Google Sans',
                                //fontWeight: FontWeight.w700,
                              ),
                            ),

                            //text research
                            SizedBox(height: 15),
                            Text(
                              'Tìm hiểu sâu hơn về tâm lí học',
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
                      ),

                      const SizedBox(width: 15),
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

                  //Sự tiến hóa của lòng tin
                  const CourseBox(
                    imageLink:
                        'assets/images/CourseScreen/su_tien_hoa_cua_long_tin.png',
                    name: 'Sự tiến hóa của lòng tin',
                    details: 'Khi niềm tin của con người bị lay động',
                    discountCost: '24.999 VNĐ',
                    realCost: '34.999 VNĐ',
                    url: 'https://nghiatt90.github.io/trust-vn/',
                  ),

                  //Góc nhìn của Socrates
                  const CourseBox(
                    imageLink: 'assets/images/CourseScreen/socratesmethod.jpg',
                    name: 'Góc nhìn của Socrates',
                    details: 'Bao gồm 40+ bài học từ vị triết gia lỗi lạc',
                    discountCost: '14.999 VNĐ',
                    realCost: '24.999 VNĐ',
                    url: '',
                  ),

                  //Bài học từ  “Nhà giả kim”
                  const CourseBox(
                    imageLink:
                        'assets/images/CourseScreen/10-bai-hoc-dat-gia-tu-nha-gia-kim-elleman-1.jpg',
                    name: 'Bài học từ  “Nhà giả kim”',
                    details:
                        'Khám phá hành trình tìm kiếm chân lý của Santiago',
                    discountCost: '19.999 VNĐ',
                    realCost: '29.999 VNĐ',
                    url: '',
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
                        builder: (context) => HomeScreen(username: widget.username, email: widget.email)));
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {},
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
