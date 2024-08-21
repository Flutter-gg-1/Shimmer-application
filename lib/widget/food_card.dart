import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FoodCard extends StatefulWidget {
  final Color color;
  final String foodName;
  final String src;
  const FoodCard(
      {super.key,
      required this.color,
      required this.foodName,
      required this.src});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  late bool isLoading;
  @override
  void initState() {
    isLoading = true;
    Future.delayed(const Duration(seconds: 4), () {
      isLoading = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77,
      height: 138,
      child: isLoading
          ? Shimmer(
              duration: const Duration(seconds: 4),
              child: Card(
                color: widget.color,
                elevation: 19,
              ),
            )
          : Card(
              color: widget.color,
              elevation: 19,
              child: Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 3, left: 3),
                      child: Text(widget.foodName)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(widget.src),
                  )
                ],
              ),
            ),
    );
  }
}
