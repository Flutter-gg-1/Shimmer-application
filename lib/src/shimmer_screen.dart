import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SihmmerScreen extends StatefulWidget {
  const SihmmerScreen({super.key});

  @override
  State<SihmmerScreen> createState() => _SihmmerScreenState();
}

class _SihmmerScreenState extends State<SihmmerScreen> {
  bool isLodaing = true;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      isLodaing = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(child: Image.asset("assets/Food_Offer.png")),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomPaint(
              size: const Size(143, 800),
              painter: RPSCustomPainter(),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    Icon(
                      Icons.menu,
                      size: 35,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 43,
                    ),
                    Text('Delicious Food?\nGo Ahead...'),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isLodaing
                        ? Shimmer(
                            duration: const Duration(seconds: 1),
                            color: Colors.grey.shade300,
                            child: Container(
                              margin: const EdgeInsets.only(right: 22),
                              width: 110,
                              height: 200,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xff000000)
                                          .withOpacity(0.25),
                                      spreadRadius: 0.3,
                                      blurRadius: 6,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xffE8E8E8),
                                        Color(0xff828282)
                                      ]),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.only(right: 22),
                            width: 110,
                            height: 200,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff000000)
                                        .withOpacity(0.25),
                                    spreadRadius: 0.3,
                                    blurRadius: 6,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: const Color(0xffD5E2FD),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                          ),
                    Container(
                      margin: const EdgeInsets.only(right: 22),
                      width: 110,
                      height: 200,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0.3,
                              blurRadius: 6,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffE8E8E8), Color(0xff828282)]),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                    ),
                    Container(
                      width: 110,
                      height: 200,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0.3,
                              blurRadius: 6,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xffE8E8E8), Color(0xff828282)]),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('See More...')],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFFFFFF), Color(0xff999999)]),
                        //boxShadow: kElevationToShadow[20]
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 0, top: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.house_outlined,
                          color: Color(0xffFF0202), size: 35)),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_outlined,
                        color: Colors.black, size: 35)),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {},
                    icon: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: const Color(0xffFF6A6A)),
                      child: const Icon(Icons.shopping_cart_outlined,
                          color: Colors.black, size: 35),
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined,
                        color: Colors.black, size: 35)),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_2_outlined,
                        color: Colors.black, size: 35)),
                label: "")
          ],
        ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(60.6642, 0);
    path_0.lineTo(76.0802, 33.3333);
    path_0.cubicTo(91.4963, 66.6667, 122.328, 133.333, 135.175, 200);
    path_0.cubicTo(148.022, 266.667, 142.883, 333.333, 135.175, 400);
    path_0.cubicTo(127.467, 466.667, 117.19, 533.333, 114.62, 600);
    path_0.cubicTo(112.051, 666.667, 117.19, 733.333, 119.759, 766.667);
    path_0.lineTo(122.328, 800);
    path_0.lineTo(-1, 800);
    path_0.lineTo(-1, 766.667);
    path_0.cubicTo(-1, 733.333, -1, 666.667, -1, 600);
    path_0.cubicTo(-1, 533.333, -1, 466.667, -1, 400);
    path_0.cubicTo(-1, 333.333, -1, 266.667, -1, 200);
    path_0.cubicTo(-1, 133.333, -1, 66.6667, -1, 33.3333);
    path_0.lineTo(-1, 0);
    path_0.lineTo(60.6642, 0);
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
