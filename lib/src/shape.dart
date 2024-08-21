import 'package:flutter/material.dart';

//pink shape class
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(65.3722, 0);
    path_0.lineTo(82.7153, 37.5);
    path_0.cubicTo(100.058, 75, 134.744, 150, 149.197, 225);
    path_0.cubicTo(163.649, 300, 157.868, 375, 149.197, 450);
    path_0.cubicTo(140.525, 525, 128.963, 600, 126.073, 675);
    path_0.cubicTo(123.182, 750, 128.963, 825, 131.854, 862.5);
    path_0.lineTo(134.744, 900);
    path_0.lineTo(-4, 900);
    path_0.lineTo(-4, 862.5);
    path_0.cubicTo(-4, 825, -4, 750, -4, 675);
    path_0.cubicTo(-4, 600, -4, 525, -4, 450);
    path_0.cubicTo(-4, 375, -4, 300, -4, 225);
    path_0.cubicTo(-4, 150, -4, 75, -4, 37.5);
    path_0.lineTo(-4, 0);
    path_0.lineTo(65.3722, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xffFFCECE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
