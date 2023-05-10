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
            Positioned(
                top: 40,
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
                ))
            // Transform.translate(
            //   offset: const Offset(4, 0),
            //   child: Column(
            //     //crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Row(
            //         children: <Widget>[
            //           Expanded(
            //             // child: IconButton(
            //             //     icon: Transform.scale(
            //             //       scale: 2.5, // Phóng to 1.5 lần
            //             //       //alignment: Alignment.topCenter,
            //             //       child: Image.asset(
            //             //           'assets/images/CourseScreen/ReturnButton.png'),
            //             //     ),
            //             //     // ignore: avoid_print
            //             //     onPressed: () {
            //             //       Navigator.push(
            //             //           context,
            //             //           MaterialPageRoute(
            //             //               builder: (context) =>
            //             //                   const HomeScreen()));
            //             //     }),
            //             child: GestureDetector(
            //               onTap: () => Navigator.pop(context),
            //               child: const Icon(
            //                 Icons.arrow_back_ios,
            //                 color: Color(0xFF677294),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
