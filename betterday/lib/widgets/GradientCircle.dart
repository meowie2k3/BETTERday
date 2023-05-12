import 'package:flutter/material.dart';

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
