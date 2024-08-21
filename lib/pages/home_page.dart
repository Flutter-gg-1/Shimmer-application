import 'package:assignment_14/widgets/empty_rectangle.dart';
import 'package:assignment_14/widgets/filled_rectangle.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool isLoading;

  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 3), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            CustomPaint(
              size: Size(144, 746),
              painter: RPSCustomPainter(),
            ),
            Positioned(
                child: Center(
                    child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/Food Offer.png"),
                  SizedBox(
                    height: 80,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Delicious Food? \nGo Ahead...",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLoading
                          ? Shimmer(child: EmptyRectangle())
                          : FilledRectangle(
                              title: "Burger",
                              color: Color(0xffD5E2FD),
                              imgPath: "assets/Rectangle 22.png",
                            ),
                      SizedBox(
                        width: 22,
                      ),
                      isLoading
                          ? Shimmer(child: EmptyRectangle())
                          : FilledRectangle(
                              title: "Pizza",
                              color: Color(0xffFFFCB0),
                              imgPath: "assets/Rectangle 22 (1).png",
                            ),
                      SizedBox(
                        width: 22,
                      ),
                      isLoading
                          ? Shimmer(child: EmptyRectangle())
                          : FilledRectangle(
                              title: "Pasta",
                              color: Color(0xffBFFFD1),
                              imgPath: "assets/Rectangle 22 (2).png",
                            ),
                    ],
                    
                  )
                ],
              ),
            )))
          ])
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(61.6642, 0);
    path_0.lineTo(77.0802, 33.3333);
    path_0.cubicTo(92.4963, 66.6667, 123.328, 133.333, 136.175, 200);
    path_0.cubicTo(149.022, 266.667, 143.883, 333.333, 136.175, 400);
    path_0.cubicTo(128.467, 466.667, 118.19, 533.333, 115.62, 600);
    path_0.cubicTo(113.051, 666.667, 118.19, 733.333, 120.759, 766.667);
    path_0.lineTo(123.328, 800);
    path_0.lineTo(0, 800);
    path_0.lineTo(0, 766.667);
    path_0.cubicTo(0, 733.333, 0, 666.667, 0, 600);
    path_0.cubicTo(0, 533.333, 0, 466.667, 0, 400);
    path_0.cubicTo(0, 333.333, 0, 266.667, 0, 200);
    path_0.cubicTo(0, 133.333, 0, 66.6667, 0, 33.3333);
    path_0.lineTo(0, 0);
    path_0.lineTo(61.6642, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xffFFCECE).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
