import 'package:flutter/material.dart';
import 'widgets/custom_painting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
              size: const Size(144, 800), 
              painter: RPSCustomPainter(),
          ),
        ],
      ),
    );
  }
}
