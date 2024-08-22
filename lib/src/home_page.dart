import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shimmer_application/src/image_circle.dart';
import 'package:shimmer_application/src/image_rectangle.dart';
import 'package:shimmer_application/src/shape.dart';
import 'package:shimmer_application/src/shimmer_circle.dart';
import 'package:shimmer_application/src/shimmer_rectangle.dart';

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
        body: Stack(
      clipBehavior: Clip.none,
      children: [
        CustomPaint(
          size: const Size(158, 799),
          painter: RPSCustomPainter(),
        ),

        //food offer image
        Positioned(
            top: 60, left: 160, child: Image.asset("assets/Food Offer.png")),
       
        //menu icon
        const Positioned(
          top: 110,
          left: 40,
          child: Icon(
            Icons.menu_rounded,
            size: 35,
          ),
        ),

        //text
        Positioned(
            top: 190,
            left: 50,
            child: Text(
              " Delicious Food? \n Go Ahead...",
              style: GoogleFonts.outfit(fontSize: 18),
            )),

        //rectangle
        isLoading
            ? Positioned(
                top: 300,
                left: 40,
                child: Row(
                  children: [
                    shimmerRictangle(),
                    const SizedBox(
                      width: 30,
                    ),
                    shimmerRictangle(),
                    const SizedBox(
                      width: 30,
                    ),
                    shimmerRictangle(),
                  ],
                ),
              )

            //rectangle image
            : Positioned(
                top: 300,
                left: 40,
                child: Row(
                  children: [
                    imageRictangle(
                        image: "assets/burger1.png",
                        color: Color(0xffD5E2FD),
                        name: "Burger"),
                    const SizedBox(
                      width: 30,
                    ),
                    imageRictangle(
                        image: "assets/pizza.png",
                        color: Color(0xffFFFCB0),
                        name: "Pizza"),
                    const SizedBox(
                      width: 30,
                    ),
                    imageRictangle(
                        image: "assets/pasta1.png",
                        color: Color(0xffBFFFD1),
                        name: "Pasta"),
                  ],
                ),
              ),

        //text See More
        Positioned(
            top: 550,
            left: 180,
            child: Text("See More...",
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  color: const Color(0xff3275FF),
                ))),
        Positioned(
            top: 570, left: 170, child: Image.asset("assets/Line 2.png")),

        //circle row 1
        isLoading
            ? Positioned(
                top: 590,
                left: 60,
                child: Row(
                  children: [
                    shimmerCircle(),
                    const SizedBox(
                      width: 20,
                    ),
                    shimmerCircle(),
                    const SizedBox(
                      width: 20,
                    ),
                    shimmerCircle(),
                    const SizedBox(
                      width: 20,
                    ),
                    shimmerCircle(),
                  ],
                ))

            //circle row 1 image
            : Positioned(
                top: 590,
                left: 60,
                child: Row(
                  children: [
                    imageCircle(
                        image:
                            "assets/Vegan.png",
                        name: "Vegan"),
                    const SizedBox(
                      width: 20,
                    ),
                    imageCircle(
                        image:
                            "assets/Sea food.png",
                        name: "Sea food"),
                    const SizedBox(
                      width: 20,
                    ),
                    imageCircle(
                        image:
                            "assets/Fast food.png",
                        name: "Fast food"),
                    const SizedBox(
                      width: 20,
                    ),
                    imageCircle(
                        image:
                            "assets/kebab.png",
                        name: "Kebab"),
                  ],
                )),

        //circle row 2
        isLoading
            ? Positioned(
                top: 680,
                left: 60,
                child: Row(
                  children: [
                    shimmerCircle(),
                    const SizedBox(
                      width: 20,
                    ),
                    shimmerCircle(),
                    const SizedBox(
                      width: 20,
                    ),
                    shimmerCircle(),
                    const SizedBox(
                      width: 20,
                    ),
                    shimmerCircle(),
                  ],
                ))

            //circle row 1 image
            : Positioned(
                top: 680,
                left: 60,
                child: Row(
                  children: [
                    imageCircle(
                        image:
                            "assets/Salad.png",
                        name: "Salad"),
                    const SizedBox(
                      width: 20,
                    ),
                    imageCircle(
                        image:
                            "assets/Dessert.png",
                        name: "Dessert"),
                    const SizedBox(
                      width: 20,
                    ),
                    imageCircle(
                        image:
                            "assets/Cake.png",
                        name: "Cake"),
                    const SizedBox(
                      width: 20,
                    ),
                    imageCircle(
                        image:
                            "assets/coffee.png",
                        name: "Coffee"),
                  ],
                )),

        // BottomNavigationBar shadow
        Positioned(
          bottom: -90,
          left: 0,
          right: -270,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 4,
                  blurRadius: 3,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
          ),
        ),
        // BottomNavigationBar
        Positioned(
          bottom: -150,
          left: 0,
          right: -270,
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset("assets/home.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/like.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/Group 5.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/notification.png"),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/profilecircle.png"),
                label: "",
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
