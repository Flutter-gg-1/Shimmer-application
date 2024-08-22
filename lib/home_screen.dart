import 'package:lucide_icons/lucide_icons.dart';
import 'package:flutter/material.dart';
import 'all_file.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(LucideIcons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LucideIcons.fan),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LucideIcons.shoppingCart, color: Colors.red),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LucideIcons.bell),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(LucideIcons.user),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            const SizedBox(height: 70),
            Positioned(
                top: 70,
                left: 150,
                child: CustomPaint(
                  size: const Size(113, 30),
                  painter: RPSCustomPainter(),
                )),
            Positioned(
              left: 0,
              top: 0,
              child: CustomPaint(
                size: const Size(144, 800),
                painter: BackgroundShape(),
              ),
            ),
            Positioned(
              left: 45,
              top: 300,
              child: Row(
                children: [
                  Container(
                    height: 138,
                    width: 77,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 138,
                    width: 77,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 138,
                    width: 77,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.yellow,
                    ),
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
