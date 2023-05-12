import 'package:flutter/material.dart';

class DustyCircle extends StatelessWidget {
  final double radius;

  const DustyCircle({required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Color(0x4D0EBE7E),
            Color.fromARGB(0, 255, 255, 255),
          ],
          stops: [0.4, 1],
        ),
      ),
    );
  }
}
