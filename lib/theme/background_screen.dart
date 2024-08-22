import 'dart:ui';

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.4242252,0);
    path_0.lineTo(size.width*0.5320294,size.height*0.04166662);
    path_0.cubicTo(size.width*0.6398343,size.height*0.08333338,size.width*0.8554406,size.height*0.1666662,size.width*0.9452797,size.height*0.2500000);
    path_0.cubicTo(size.width*1.035119,size.height*0.3333337,size.width*0.9991818,size.height*0.4166663,size.width*0.9452797,size.height*0.5000000);
    path_0.cubicTo(size.width*0.8913776,size.height*0.5833337,size.width*0.8195105,size.height*0.6666663,size.width*0.8015385,size.height*0.7500000);
    path_0.cubicTo(size.width*0.7835734,size.height*0.8333337,size.width*0.8195105,size.height*0.9166663,size.width*0.8374755,size.height*0.9583337);
    path_0.lineTo(size.width*0.8554406,size.height);
    path_0.lineTo(size.width*-0.006993007,size.height);
    path_0.lineTo(size.width*-0.006993007,size.height*0.9583337);
    path_0.cubicTo(size.width*-0.006993007,size.height*0.9166663,size.width*-0.006993007,size.height*0.8333337,size.width*-0.006993007,size.height*0.7500000);
    path_0.cubicTo(size.width*-0.006993007,size.height*0.6666663,size.width*-0.006993007,size.height*0.5833337,size.width*-0.006993007,size.height*0.5000000);
    path_0.cubicTo(size.width*-0.006993007,size.height*0.4166663,size.width*-0.006993007,size.height*0.3333337,size.width*-0.006993007,size.height*0.2500000);
    path_0.cubicTo(size.width*-0.006993007,size.height*0.1666662,size.width*-0.006993007,size.height*0.08333338,size.width*-0.006993007,size.height*0.04166662);
    path_0.lineTo(size.width*-0.006993007,0);
    path_0.lineTo(size.width*0.4242252,0);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xffFFCECE).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}