import 'package:betterday/widgets/CountdownTimer.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:betterday/widgets/GradientCircle.dart';
import 'package:betterday/widgets/MessageInCallScreenPatient.dart';
import 'package:flutter/material.dart';

class CallScreenPatient extends StatelessWidget {
  CallScreenPatient({super.key});

  StopWatchWidget stopWatchWidget = StopWatchWidget(timelimit: 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 214, 240, 234),

      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -100,
              left: -200,
              child: GradientCircle(),
            ),
            const Positioned(
              top: 0,
              right: -700,
              child: DustyCircle(radius: 600),
            ),
            Transform.translate(
              offset: const Offset(0, 0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
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
                      const Image(
                          image: AssetImage('assets/icon/LOGO 2.png'),
                          width: 130,
                          height: 130),
                      Column(
                        children: const <Widget>[
                          Icon(
                            Icons.report_outlined,
                            color: Colors.red,
                          ),
                          SizedBox(height: 2), // Add some space
                          Text('Báo cáo',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Google Sans',
                                fontWeight: FontWeight.w500,
                                //fontStyle: FontStyle.italic
                              )),
                        ],
                      ),
                    ],
                  ),
                  //counter
                  stopWatchWidget,
                  //box chat
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
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
                            TextContainer(
                              displayText: const [
                                'Bạn cảm thấy thế nào?',
                                'Tôi rất tiếc khi phải nghe điều đó!',
                                'Hãy nhìn về mặt tích cực nào!',
                                'Cố lên bạn nhé!'
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //text vẫn còn...
                  const SizedBox(height: 15),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Vẫn còn ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '50 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'người sẵn\n sàng nghe bạn chia sẻ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //button
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF6D060),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 50,
                            height: 50,
                            child: Transform.translate(
                              offset: const Offset(0, 6),
                              child: GestureDetector(
                                onTap: () {
                                  stopWatchWidget.addTimeLimit();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.more_time_outlined,
                                      size: 35,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'THÊM\nTHỜI GIAN',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 216, 11, 11),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 70,
                            height: 70,
                            child: Transform.translate(
                              offset: const Offset(0, 5),
                              child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.pause,
                                      size: 60,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'CÚP MÁY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF21B580),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 50,
                            height: 50,
                            child: Transform.translate(
                              offset: const Offset(0, 6),
                              child: GestureDetector(
                                //onTap: () {},
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.call,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'CHUYỂN\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 17),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
