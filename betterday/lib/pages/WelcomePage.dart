import 'package:betterday/pages/AuthPages/BotUI.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:betterday/widgets/GradientCircle.dart';
import 'package:betterday/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:betterday/pages/BotChatScreen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Positioned(
          top: -50,
          left: -100,
          child: GradientCircle(),
        ),
        const Positioned(
          top: 450,
          right: -230,
          child: DustyCircle(radius: 250),
        ),
        Transform.translate(
          offset: const Offset(0, -50),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                height: 350,
                child: Image.asset('assets/images/WelcomePage/mascot.png'),
              ),
              const Text(
                'Xin chào Tú!\nHôm nay của bạn thế nào?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Google Sans',
                  fontSize: 23,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        RatingButton(
                            imagedestination:
                                'assets/images/WelcomePage/Rate_1.png',
                            size: 45,
                            text: 'Tuyệt vời'),
                        SizedBox(width: 10),
                        RatingButton(
                            imagedestination:
                                'assets/images/WelcomePage/Rate_2.png',
                            size: 45,
                            text: 'Vui vẻ'),
                        SizedBox(width: 10),
                        RatingButton(
                            imagedestination:
                                'assets/images/WelcomePage/Rate_3.png',
                            size: 45,
                            text: 'Bình thường'),
                        SizedBox(width: 10),
                        RatingButton(
                            imagedestination:
                                'assets/images/WelcomePage/Rate_4.png',
                            size: 45,
                            text: 'Buồn'),
                        SizedBox(width: 10),
                        RatingButton(
                            imagedestination:
                                'assets/images/WelcomePage/Rate_5.png',
                            size: 45,
                            text: 'Tệ'),
                        SizedBox(width: 10),
                        RatingButton(
                            imagedestination:
                                'assets/images/WelcomePage/Rate_6.png',
                            size: 45,
                            text: 'Cực tệ'),
                      ],
                    ),
              const SizedBox(
                height: 50,
              ),
              const Text('Hãy chọn theo cảm xúc của bạn...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Google Sans',
                    fontSize: 15,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  nextScreenReplace(context, const BotUI());
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 23, 140, 99)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'BỎ QUA',
                  style: TextStyle(
                    fontFamily: 'Google Sans',
                    fontSize: 18,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          )),
        ),
      ]),
    );
  }

  
}

class RatingButton extends StatelessWidget {
  final String imagedestination;
  final double size;
  final String text;

  const RatingButton(
      {Key? key,
      required this.imagedestination,
      required this.size,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: size,
        child: ElevatedButton(
            onPressed: () {
              print(text);
              nextScreenReplace(context, BotUI());
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF12D38D)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: Transform.scale(
              scale: 3.5,
              child: Image.asset(
                imagedestination,
                width: size / 2,
                height: size / 2,
              ),
            )));
  }
}
