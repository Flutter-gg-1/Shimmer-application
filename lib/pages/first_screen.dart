import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late bool isLoading = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      isLoading = true;
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEdgeDragWidth: 50,
        drawer: const Drawer(
          width: 235,
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Image.asset("assets/hambergermenu.png"),
          backgroundColor: Colors.transparent,
          title: Image.asset("assets/Food Offer.png"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(144, 800),
                painter: RPSCustomPainter(),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  const SizedBox(
                    width: 59,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Delicious Food? \nGo Ahead...",
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 57,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Image.asset("assets/pic1.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                height: 138,
                                width: 77,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffE8E8E8),
                                          Color(0xff828282)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/pic2.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                height: 138,
                                width: 77,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffE8E8E8),
                                          Color(0xff828282)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/pic3.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                height: 138,
                                width: 77,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffE8E8E8),
                                          Color(0xff828282)
                                        ])),
                              ),
                            )
                    ],
                  ),
                  const SizedBox(
                    height: 57,
                  ),
                  Center(
                    child: Container(
                      height: 18,
                      width: 72,
                      child: Column(
                        children: [
                          const Text(
                            "See More...",
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3275FF)),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Container(
                            height: 2,
                            color: const Color(0xff3275FF),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Image.asset("assets/Ellipse 2.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/Ellipse 3.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/Ellipse 4.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/Ellipse 5.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Image.asset("assets/Ellipse 6.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/Ellipse 7.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/Ellipse 8.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            ),
                      isLoading
                          ? Image.asset("assets/Ellipse 9.png")
                          : Shimmer(
                              duration: const Duration(seconds: 1),
                              color: Colors.grey.shade300,
                              child: Container(
                                width: 48,
                                height: 48,
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x33000000),
                                          blurRadius: 20,
                                          offset: Offset(0, -1),
                                          spreadRadius: 1)
                                    ],
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffFFFFFF),
                                          Color(0xff999999)
                                        ])),
                              ),
                            )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
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

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xffFFCECE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
