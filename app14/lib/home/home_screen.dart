import 'package:app14/home/subviews/circle_grid.dart';
import 'package:flutter/material.dart';
import '../app_state.dart';
import 'subviews/card_grid.dart';
import '../helpers/side_shape.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppState appState = AppState();

  @override
  void initState() {
    _shimmer();
    super.initState();
  }

  void _shimmer() {
    appState.isLoading = true;

    Future.delayed(const Duration(seconds: 2), () {
      appState.isLoading = false;
      setState(() {});
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomPaint(
            size: Size(
                MediaQuery.of(context).size.width / 2.5,
                MediaQuery.of(context)
                    .size
                    .height), // Set the size of your canvas
            painter: MyPainter(),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/food_offer.png',
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 32,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Delicious Food?\nGo Ahead...',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          CardGrid(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: _shimmer,
                                    child: const Text(
                                      'see more...',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              CircleGrid(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
