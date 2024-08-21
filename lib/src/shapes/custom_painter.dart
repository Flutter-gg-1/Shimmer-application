import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(61.6642,0);
    path_0.lineTo(77.0802,33.3333);
    path_0.cubicTo(92.4963,66.6667,123.328,133.333,136.175,200);
    path_0.cubicTo(149.022,266.667,143.883,333.333,136.175,400);
    path_0.cubicTo(128.467,466.667,118.19,533.333,115.62,600);
    path_0.cubicTo(113.051,666.667,118.19,733.333,120.759,766.667);
    path_0.lineTo(123.328,800);
    path_0.lineTo(0,800);
    path_0.lineTo(0,766.667);
    path_0.cubicTo(0,733.333,0,666.667,0,600);
    path_0.cubicTo(0,533.333,0,466.667,0,400);
    path_0.cubicTo(0,333.333,0,266.667,0,200);
    path_0.cubicTo(0,133.333,0,66.6667,0,33.3333);
    path_0.lineTo(0,0);
    path_0.lineTo(61.6642,0);
    path_0.close();

Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.color = const Color(0xffFFCECE).withOpacity(1.0);
canvas.drawPath(path_0,paint0Fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}