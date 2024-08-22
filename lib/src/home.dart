import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'gradient_widgets.dart';
import 'image_widgets.dart';
import '../src/rps_custom_painter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showShimmer = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        showShimmer = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(),
      bottomNavigationBar: NavigationBar(
        height: 95,
        destinations: const [
          Icon(Icons.person),
          Icon(Icons.cabin),
          Icon(Icons.shop),
          Icon(Icons.person),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 3,
            right: 200,
            left: 1,
            child: CustomPaint(
              size: const Size(180, 800),
              painter: RPSCustomPainter(),
            ),
          ),
          const Positioned(
            top: 170,
            left: 41,
            right: 211,
            child: Text('Delicious Food?'),
          ),
          const Positioned(
            top: 190,
            left: 41,
            right: 211,
            child: Text('Go Ahead ...'),
          ),
          Positioned(
            top: 280,
            left: 60,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientContainer(),
                  )
                : buildImageContainers(image: 'assets/Rectangle 22.png'),
          ),
          Positioned(
            top: 280,
            left: 160,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientContainer(),
                  )
                : buildImageContainers(image: 'assets/Rectangle 23.png'),
          ),
          Positioned(
            top: 280,
            left: 260,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientContainer(),
                  )
                : buildImageContainers(image: 'assets/Rectangle 24.png'),
          ),
          const Positioned(
            top: 440,
            left: 185,
            child: Text(
              'See more...',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const Positioned(
            top: 450,
            left: 180,
            child: Text(
              '___________',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Positioned(
            top: 467,
            left: 35,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 2.png'),
          ),
          Positioned(
            top: 467,
            left: 140,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 3.png'),
          ),
          Positioned(
            top: 467,
            left: 240,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 4.png'),
          ),
          Positioned(
            top: 467,
            left: 340,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 5.png'),
          ),
          Positioned(
            top: 580,
            left: 35,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 6.png'),
          ),
          Positioned(
            top: 580,
            left: 140,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 7.png'),
          ),
          Positioned(
            top: 580,
            left: 240,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 8.png'),
          ),
          Positioned(
            top: 580,
            left: 340,
            child: showShimmer
                ? Shimmer(
                    duration: const Duration(seconds: 3),
                    color: Colors.white,
                    child: buildGradientCircle(),
                  )
                : buildImageCircles(image: 'assets/Ellipse 9.png'),
          ),
        ],
      ),
    );
  }
}
