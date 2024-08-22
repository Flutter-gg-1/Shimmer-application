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
            Positioned(
                top: 70,
                left: 150,
                child: CustomPaint(
                  size: const Size(113, 30),
                  painter: RPSCustomPainter(),
                )),
            CustomPaint(
              size: const Size(144, 800),
              painter: BackgroundShape(),
            ),
            Positioned(
                top: 110,
                left: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(LucideIcons.menu),
                  iconSize: 35,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
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
                  const SizedBox(height: 50),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                      CircleAvatar(radius: 45, backgroundColor: Colors.yellow),
                    ],
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
