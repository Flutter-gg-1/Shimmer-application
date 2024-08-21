import 'package:flutter/material.dart';
import '../utils/colored_side.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              child: CustomPaint(
                size: const Size(144, 800),
                painter: ColoredSide(),
              ),
            ),
            const Positioned(
                top: 60,
                left: 32,
                child: Icon(
                  Icons.menu,
                  size: 35,
                )),
            Positioned(
                top: 16,
                left: 125,
                child: Image.asset('assets/images/logo.png')),
            const Positioned(
              top: 150,
              left: 40,
              child: Column(
                children: [
                  Text('Delicious Food? ', style: TextStyle(fontSize: 15)),
                  Text(
                    'Go Ahead...',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
