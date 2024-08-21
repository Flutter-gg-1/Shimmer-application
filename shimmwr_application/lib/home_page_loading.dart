import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomePageLoading extends StatefulWidget {
  const HomePageLoading({super.key});

  @override
  State<HomePageLoading> createState() => _HomePageLoadingState();
}

class _HomePageLoadingState extends State<HomePageLoading> {
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
        body: Stack(fit: StackFit.expand, children: [
//Add this CustomPaint widget to the Widget Tree
      CustomPaint(
        size: const Size(144, 800),
        painter: RPSCustomPainter(),
      ),
      Positioned(
          top: 16,
          left: 120,
          right: 120,
          child: Image.asset("assets/Food Offer.png")),
      const Positioned(
          top: 60,
          left: 36,
          child: Icon(
            Icons.menu_rounded,
            size: 35,
          )),
      const Positioned(
          top: 151,
          left: 36,
          child: Text(
            "Delicious Food?",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )),
      const Positioned(
          left: 36,
          top: 169,
          child: Text(
            "Go Ahead...",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )),
      Positioned(
          top: 239,
          left: 60,
          child: isLoading
              ? Shimmer(
                  duration: const Duration(seconds: 7),
                  color: const Color.fromARGB(255, 248, 244, 210),
                  child: Container(
                    height: 138,
                    width: 77,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ))
              : Container(
                  height: 138,
                  width: 77,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: Stack(children: [
                    Image.asset("assets/burger2.png"),
                    const Positioned(
                        top: 9,
                        left: 7,
                        child: Text(
                          "Burger",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ))
                  ]))),
      Positioned(
          top: 239,
          left: 193,
          child: isLoading
              ? Shimmer(
                  duration: const Duration(seconds: 7),
                  color: const Color.fromARGB(255, 248, 244, 210),
                  child: Container(
                    height: 138,
                    width: 77,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ))
              : Container(
                  height: 138,
                  width: 77,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFCB0),
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(children: [
                    Image.asset("assets/pizza.png"),
                    const Positioned(
                        top: 9,
                        left: 7,
                        child: Text(
                          "Pizaa",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ))
                  ]))),
      Positioned(
          top: 239,
          left: 330,
          child: isLoading
              ? Shimmer(
                  duration: const Duration(seconds: 7),
                  color: Color.fromARGB(255, 248, 244, 210),
                  child: Container(
                    height: 138,
                    width: 77,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ))
              : Container(
                  height: 138,
                  width: 77,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFCB0),
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(children: [
                    Image.asset("assets/pasta2.png"),
                    const Positioned(
                        top: 9,
                        left: 7,
                        child: Text(
                          "Pasta",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ))
                  ]))),
      Positioned(
          top: 434,
          left: 190,
          child: Container(
            width: 100,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Color(0xff3275FF), // Color for top border
              // width: 0.5,
            ))),
            child: const Text(
              "    See More...",
              style: TextStyle(color: Color(0xff3275FF)),
            ),
          )),
      Positioned(
          top: 467,
          left: 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              isLoading
                  ? Shimmer(
                      duration: const Duration(seconds: 7),
                      color: const Color.fromARGB(255, 248, 244, 210),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            "assets/Ellipse 2.png",
                          ),
                        ),
                        const Text(
                          "Vegan",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
              const SizedBox(
                width: 20,
              ),
              Positioned(
                  top: 467,
                  left: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Shimmer(
                              duration: const Duration(seconds: 7),
                              color: const Color.fromARGB(255, 248, 244, 210),
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image.asset(
                                    "assets/Ellipse 2-1.png",
                                  ),
                                ),
                                const Text(
                                  "Sea food",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              Positioned(
                  top: 467,
                  left: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Shimmer(
                              duration: const Duration(seconds: 7),
                              color: const Color.fromARGB(255, 248, 244, 210),
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image.asset(
                                    "assets/Ellipse 2-2.png",
                                  ),
                                ),
                                const Text(
                                  "Fast food",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              Positioned(
                  top: 467,
                  left: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Shimmer(
                              duration: const Duration(seconds: 7),
                              color: const Color.fromARGB(255, 248, 244, 210),
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image.asset(
                                    "assets/Ellipse 2-3.png",
                                  ),
                                ),
                                const Text(
                                  "Fast food",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
            ],
          )),
      Positioned(
          top: 580,
          left: 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              isLoading
                  ? Shimmer(
                      duration: const Duration(seconds: 7),
                      color: const Color.fromARGB(255, 248, 244, 210),
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            "assets/Ellipse 2-4.png",
                          ),
                        ),
                        const Text(
                          "Salad",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
              const SizedBox(
                width: 20,
              ),
              Positioned(
                  top: 467,
                  left: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Shimmer(
                              duration: const Duration(seconds: 7),
                              color: const Color.fromARGB(255, 248, 244, 210),
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image.asset(
                                    "assets/Ellipse 2-5.png",
                                  ),
                                ),
                                const Text(
                                  "Dessert",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              Positioned(
                  top: 467,
                  left: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Shimmer(
                              duration: const Duration(seconds: 7),
                              color: const Color.fromARGB(255, 248, 244, 210),
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image.asset(
                                    "assets/Ellipse 2-6.png",
                                  ),
                                ),
                                const Text(
                                  "Cake",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              Positioned(
                  top: 467,
                  left: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      isLoading
                          ? Shimmer(
                              duration: const Duration(seconds: 7),
                              color: const Color.fromARGB(255, 248, 244, 210),
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Image.asset(
                                    "assets/Ellipse 2-7.png",
                                  ),
                                ),
                                const Text(
                                  "Coffe",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                    ],
                  )),
            ],
          )),
      Positioned(
          top: 735,
          child: Container(
              width: 450,
              height: 67,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Color of the shadow
                    spreadRadius: 1, // How much the shadow spreads
                    blurRadius: 5, // Softness of the shadow
                    offset: const Offset(0,
                        -3), // Offset to position the shadow only at the top (negative y value)
                  ),
                ],
                color: Colors.white,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Color(0xffFF6A6A),
                  ),
                  Icon(
                    Icons.favorite_border_rounded,
                    size: 26,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffFF6A6A),
                    child: Icon(Icons.shopping_cart_outlined),
                  ),
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 26,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 26,
                  )
                ],
              ))),
    ]));
  }
}

//Copy this CustomPainter code to the Bottom of the File
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
    paint_0_fill.color = Color(0xffFFCECE).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
