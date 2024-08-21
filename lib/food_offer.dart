import 'package:flutter/material.dart';
import 'package:shimmer_app/widgets/food_card.dart';
import './utils/colored_side.dart';

class FoodOffer extends StatefulWidget {
  const FoodOffer({super.key});

  @override
  State<FoodOffer> createState() => _FoodOfferState();
}

class _FoodOfferState extends State<FoodOffer> {
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
                  Text('Delicious Food? '),
                  Text('Go Ahead...'),
                ],
              ),
            ),
            Positioned(
              top: 239,
              left: 43,
              child: Row(
                children: [
                  FoodCard(),
                  SizedBox(width:22 ,),
                  FoodCard(),
                  SizedBox(width:22 ,),
                  FoodCard(),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
