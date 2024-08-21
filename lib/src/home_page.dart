import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
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
        Positioned(
            top: 60, left: 160, child: Image.asset("assets/Food Offer.png")),
        const Positioned(
          top: 110,
          left: 40,
          child: Icon(
            Icons.menu_rounded,
            size: 35,
          ),
        ),
        Positioned(
            top: 200,
            left: 60,
            child: Text(
              " Delicious Food? \n Go Ahead...",
              style: GoogleFonts.outfit(fontSize: 15),
            )),
        Positioned(
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
        ),
        Positioned(
            top: 550,
            left: 180,
            child: Text("See More...",
                style: GoogleFonts.outfit(
                  fontSize: 11,
                  color: const Color(0xff3275FF),
                ))),
        Positioned(
            top: 570, left: 170, child: Image.asset("assets/Line 2.png")),
        Positioned(
            top: 590,
            left: 50,
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
            )),
        Positioned(
            top: 670,
            left: 50,
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
            )),
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
                  offset: Offset(0, -2),
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
