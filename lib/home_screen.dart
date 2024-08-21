import 'package:assignment_14/background_shape.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            const SizedBox(height: 70),
            const Positioned(top: 70, left: 150, child: Text('Home Screen')),
            Positioned(
              left: 0,
              top: 0,
              child: CustomPaint(
                size: const Size(144, 800),
                painter: BackgroundShape(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
