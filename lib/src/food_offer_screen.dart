import 'package:flutter/material.dart';
import 'package:shimmer_app/src/shapes/custom_painter.dart';

class FoodOfferScreen extends StatefulWidget {
  const FoodOfferScreen({super.key});

  @override
  State<FoodOfferScreen> createState() => _FoodOfferScreenState();
}

class _FoodOfferScreenState extends State<FoodOfferScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          CustomPaint(
            size: const Size(144, 800),
            painter: RPSCustomPainter(),
          )
        ],
      )),
    );
  }
}
