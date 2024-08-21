import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xffFFCECE);
    path = Path();
    path.lineTo(size.width * 0.43, 0);
    path.cubicTo(size.width * 0.43, 0, size.width * 0.54, size.height * 0.04,
        size.width * 0.54, size.height * 0.04);
    path.cubicTo(size.width * 0.64, size.height * 0.08, size.width * 0.86,
        size.height * 0.17, size.width * 0.95, size.height / 4);
    path.cubicTo(size.width * 1.03, size.height / 3, size.width,
        size.height * 0.42, size.width * 0.95, size.height / 2);
    path.cubicTo(size.width * 0.89, size.height * 0.58, size.width * 0.82,
        size.height * 0.67, size.width * 0.8, size.height * 0.75);
    path.cubicTo(size.width * 0.79, size.height * 0.83, size.width * 0.82,
        size.height * 0.92, size.width * 0.84, size.height * 0.96);
    path.cubicTo(size.width * 0.84, size.height * 0.96, size.width * 0.86,
        size.height, size.width * 0.86, size.height);
    path.cubicTo(
        size.width * 0.86, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, size.height * 0.96, 0, size.height * 0.96);
    path.cubicTo(
        0, size.height * 0.92, 0, size.height * 0.83, 0, size.height * 0.75);
    path.cubicTo(
        0, size.height * 0.67, 0, size.height * 0.58, 0, size.height / 2);
    path.cubicTo(0, size.height * 0.42, 0, size.height / 3, 0, size.height / 4);
    path.cubicTo(
        0, size.height * 0.17, 0, size.height * 0.08, 0, size.height * 0.04);
    path.cubicTo(0, size.height * 0.04, 0, 0, 0, 0);
    path.cubicTo(0, 0, size.width * 0.43, 0, size.width * 0.43, 0);
    path.cubicTo(
        size.width * 0.43, 0, size.width * 0.43, 0, size.width * 0.43, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
