import 'package:lucide_icons/lucide_icons.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'all_file.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    child: isLoading
                        ? Shimmer(
                            color: Colors.red,
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
                          )
                        : Row(
                            children: [
                              Container(
                                height: 138,
                                width: 77,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(255, 69, 68, 61),
                                ),
                              ),
                              const SizedBox(width: 30),
                              Container(
                                height: 138,
                                width: 77,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(255, 49, 49, 46),
                                ),
                              ),
                              const SizedBox(width: 30),
                              Container(
                                height: 138,
                                width: 77,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromARGB(255, 79, 78, 68),
                                ),
                              ),
                            ],
                          ),
                  ),
                  const SizedBox(height: 50),
                  isLoading
                      ? Shimmer(
                          color: Colors.red,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                            ],
                          ),
                        )
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 56, 55, 52)),
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 58, 58, 55)),
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 124, 123, 115)),
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 130, 129, 119)),
                          ],
                        ),
                  const SizedBox(height: 50),
                  isLoading
                      ? Shimmer(
                          color: Colors.red,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                              CircleAvatar(
                                  radius: 45, backgroundColor: Colors.yellow),
                            ],
                          ),
                        )
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 30, 30, 29)),
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 53, 53, 51)),
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 52, 51, 48)),
                            CircleAvatar(
                                radius: 45,
                                backgroundColor:
                                    Color.fromARGB(255, 63, 62, 60)),
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
