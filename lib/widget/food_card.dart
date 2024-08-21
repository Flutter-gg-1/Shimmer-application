import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final Color color;
  final String foodName;
  final String src;
  const FoodCard(
      {super.key,
      required this.color,
      required this.foodName,
      required this.src});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77,
      height: 138,
      child: Card(
        color: color,
        elevation: 19,
        child: Stack(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 3, left: 3),
                child: Text(foodName)),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(src),
            )
          ],
        ),
      ),
    );
  }
}
