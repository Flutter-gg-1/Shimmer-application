import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4282236, 0);
    path_0.lineTo(size.width * 0.5352792, size.height * 0.04166662);
    path_0.cubicTo(
        size.width * 0.6423354,
        size.height * 0.08333338,
        size.width * 0.8564444,
        size.height * 0.1666662,
        size.width * 0.9456597,
        size.height * 0.2500000);
    path_0.cubicTo(
        size.width * 1.034875,
        size.height * 0.3333337,
        size.width * 0.9991875,
        size.height * 0.4166663,
        size.width * 0.9456597,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.8921319,
        size.height * 0.5833337,
        size.width * 0.8207639,
        size.height * 0.6666663,
        size.width * 0.8029167,
        size.height * 0.7500000);
    path_0.cubicTo(
        size.width * 0.7850764,
        size.height * 0.8333337,
        size.width * 0.8207639,
        size.height * 0.9166663,
        size.width * 0.8386042,
        size.height * 0.9583337);
    path_0.lineTo(size.width * 0.8564444, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.9583337);
    path_0.cubicTo(0, size.height * 0.9166663, 0, size.height * 0.8333337, 0,
        size.height * 0.7500000);
    path_0.cubicTo(0, size.height * 0.6666663, 0, size.height * 0.5833337, 0,
        size.height * 0.5000000);
    path_0.cubicTo(0, size.height * 0.4166663, 0, size.height * 0.3333337, 0,
        size.height * 0.2500000);
    path_0.cubicTo(0, size.height * 0.1666662, 0, size.height * 0.08333338, 0,
        size.height * 0.04166662);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width * 0.4282236, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFCECE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
