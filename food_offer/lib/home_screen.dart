import 'package:flutter/material.dart';
import './custom_shape.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  @override
  void initState() {
    _fetchImages();
    super.initState();
  }

  void _fetchImages() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 8), () {
      isLoading = false;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 150,
              child: Image.asset("assets/appBar.png"),
            ),
            CustomPaint(
              painter: MyPainter(),
              size: Size(MediaQuery.of(context).size.width / 2.5,
                  MediaQuery.of(context).size.height),
            ),
            Positioned(
                top: 50,
                left: 30,
                child: InkWell(
                    onTap: () {
                      _fetchImages();
                      setState(() {});
                    },
                    child: Icon(Icons.menu))),
            const Positioned(
                top: 150,
                left: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delicious Food?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Go ahead ...",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            isLoading ? const ShimmerWidget() : const CustomWidget(),
            Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 67,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.house,
                        color: Color(0xffFF0202),
                      ),
                      const FaIcon(
                        FontAwesomeIcons.heart,
                      ),
                      Container(
                        width: 38,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xffFF6A6A), shape: BoxShape.circle),
                        child: const FaIcon(
                          FontAwesomeIcons.cartShopping,
                          size: 20,
                        ),
                      ),
                      const Icon(
                        Icons.notifications,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.circleUser,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class ShimmerWidget extends StatefulWidget {
  const ShimmerWidget({super.key});

  @override
  State<ShimmerWidget> createState() => _ShimmerWidgetState();
}

class _ShimmerWidgetState extends State<ShimmerWidget> {
  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 77,
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 35,
              ),
              Container(
                width: 77,
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 35,
              ),
              Container(
                width: 77,
                height: 140,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            child: Container(
              width: 72,
              height: 17,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xff3275FF)),
                ),
              ),
              child: const Text(
                'See More...',
                style: TextStyle(
                  color: Color(0xff3275FF),
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffE8E8E8), Color(0xff828282)])),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 77,
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xffD5E2FD),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(25 / 100),

                    blurRadius: 6,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    left: 2,
                    width: 100,
                    child: Image.asset(
                      "assets/e1.png",
                      width: 77,
                      height: 138,
                    ),
                  ),
                  const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "Burger",
                        style: TextStyle(fontSize: 10),
                      ))
                ],
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            Container(
              width: 77,
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xffFFFCB0),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(25 / 100),

                    blurRadius: 6,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: -15,
                    width: 90,
                    child: Image.asset(
                      "assets/e2.png",
                    ),
                  ),
                  const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "Pizza",
                        style: TextStyle(fontSize: 10),
                      ))
                ],
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            Container(
              width: 77,
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xffBFFFD1),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(25 / 100),

                    blurRadius: 6,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 5,
                    top: 15,
                    width: 90,
                    child: Image.asset(
                      "assets/e3.png",
                    ),
                  ),
                  const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "Pasta",
                        style: TextStyle(fontSize: 10),
                      ))
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        InkWell(
          child: Container(
            width: 72,
            height: 17,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xff3275FF)),
              ),
            ),
            child: const Text(
              'See More...',
              style: TextStyle(
                color: Color(0xff3275FF),
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e5.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Vegan",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e6.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Sea food",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e7.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Fast food",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e8.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Kebab",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e9.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Kebab",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e10.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Dessert",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e11.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Cake",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(25 / 100),
                        spreadRadius: -1,
                        blurRadius: 20,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/e12.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "Coffee",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
