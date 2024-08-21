import 'package:assignment_14/widgets/custom_painter.dart';
import 'package:assignment_14/widgets/empty_circle.dart';
import 'package:assignment_14/widgets/empty_rectangle.dart';
import 'package:assignment_14/widgets/filled_circle.dart';
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
              size: const Size(144, 730),
              painter: RPSCustomPainter(),
            ),
            Positioned(
                child: Center(
                    child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/Food Offer.png"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.menu),
                        SizedBox(height: 40,),
                        Text(
                          "Delicious Food? \nGo Ahead...",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLoading
                          ? Shimmer(child: const EmptyRectangle())
                          : const FilledRectangle(
                              title: "Burger",
                              color: Color(0xffD5E2FD),
                              imgPath: "assets/Rectangle 22.png",
                            ),
                      const SizedBox(
                        width: 22,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyRectangle())
                          : const FilledRectangle(
                              title: "Pizza",
                              color: Color(0xffFFFCB0),
                              imgPath: "assets/Rectangle 22 (1).png",
                            ),
                      const SizedBox(
                        width: 22,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyRectangle())
                          : const FilledRectangle(
                              title: "Pasta",
                              color: Color(0xffBFFFD1),
                              imgPath: "assets/Rectangle 22 (2).png",
                            ),
                    ],
                  ),
                  const SizedBox(
                    height: 57,
                  ),
                  Container(
                    height: 17,
                    width: 72,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xff3275FF)))),
                    child: const Center(
                      child: Text(
                        "See More...",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff3275FF)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2.png", title: "Vegan"),
                      SizedBox(
                        width: 21,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2 (1).png", title: "Sea food"),
                      SizedBox(
                        width: 21,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2 (7).png", title: "Fast food"),
                      SizedBox(
                        width: 21,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2 (2).png", title: "Kebab"),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2 (3).png", title: "Salad"),
                      SizedBox(
                        width: 21,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2 (4).png", title: "Dessert"),
                      SizedBox(
                        width: 21,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2 (5).png", title: "Cake"),
                      SizedBox(
                        width: 21,
                      ),
                      isLoading
                          ? Shimmer(child: const EmptyCircle())
                          : FilledCircle(
                              imgPath: "assets/Ellipse 2 (6).png", title: "Coffee"),
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

