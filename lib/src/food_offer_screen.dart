import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shimmer_app/src/shapes/custom_painter.dart';
import 'package:shimmer_app/widget/custumized_bottom_bar.dart';
import 'package:shimmer_app/widget/food_types_list.dart';
import 'package:shimmer_app/widget/main_food_list.dart';

class FoodOfferScreen extends StatefulWidget {
  const FoodOfferScreen({super.key});

  @override
  State<FoodOfferScreen> createState() => _FoodOfferScreenState();
}

class _FoodOfferScreenState extends State<FoodOfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustumizedBottomBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 150,
            top: 16,
            child: SizedBox(
              width: 112,
              height: 30,
              child: Image.asset('assest/image/logo.png'),
            ),
          ),
          CustomPaint(
            size: const Size(144, 800),
            painter: RPSCustomPainter(),
          ),
          const Positioned(
              left: 32,
              top: 60,
              child: Icon(
                LineAwesome.bars_solid,
                size: 35,
              )),
          const Positioned(
            left: 41,
            top: 151,
            child: Text(
              'Delicious Food?\nGo Ahead...',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          const MainFoodList(),
          const Positioned(
            top: 450,
            left: 165,
            child: Text(
              '   See More...\n______________',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3275FF),
                  height: 0.5),
            ),
          ),
          const FoodTypesList(),
        ],
      )),
    );
  }
}
