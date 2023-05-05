// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:betterday/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:betterday/DustyCircle.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Positioned(
          top: -50,
          left: -100,
          child: GradientCircle(),
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
                child: Image.network('https://i.imgur.com/OliMevp.png'),
              ),
              const Text(
                'Xin chào Tú!\nHôm nay của bạn thế nào?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Google Sans',
                  fontSize: 23,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const RatingButton(
                      imageUrl: 'https://i.imgur.com/UQB0TYm.png',
                      size: 45,
                      text: 'Tuyệt vời'),
                  const SizedBox(width: 10),
                  const RatingButton(
                      imageUrl: 'https://i.imgur.com/1ufDJ4E.png',
                      size: 45,
                      text: 'Vui vẻ'),
                  const SizedBox(width: 10),
                  const RatingButton(
                      imageUrl: 'https://i.imgur.com/Obdcq5i.png',
                      size: 45,
                      text: 'Bình thường'),
                  const SizedBox(width: 10),
                  const RatingButton(
                      imageUrl: 'https://i.imgur.com/CQ3tPRC.png',
                      size: 45,
                      text: 'Buồn'),
                  const SizedBox(width: 10),
                  const RatingButton(
                      imageUrl: 'https://i.imgur.com/TQFekcJ.png',
                      size: 45,
                      text: 'Tệ'),
                  const SizedBox(width: 10),
                  const RatingButton(
                      imageUrl: 'https://i.imgur.com/5637DkS.png',
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
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  print("skipped");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 23, 140, 99)),
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
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          )),
        ),
        const Positioned(
          top: 450,
          right: -230,
          child: DustyCircle(radius: 250),
        ),
      ]),
    );
  }
}

class GradientCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(350, 350),
      painter: _GradientCirclePainter(),
    );
  }
}

class _GradientCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    const gradient = LinearGradient(
      colors: [
        Color(0xff063B28),
        Color(0xff07D9AD),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final shader = gradient.createShader(
      Rect.fromCircle(center: center, radius: radius),
    );

    final paint = Paint()..shader = shader;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(_GradientCirclePainter oldDelegate) => false;
}

class RatingButton extends StatelessWidget {
  final String imageUrl;
  final double size;
  final String text;

  const RatingButton(
      {Key? key,
      required this.imageUrl,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
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
              child: Image.network(
                imageUrl,
                width: size / 2,
                height: size / 2,
              ),
            )));
  }
}
