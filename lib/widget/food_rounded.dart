import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FoodRounded extends StatefulWidget {
  final String foodName;
  final String src;
  const FoodRounded({super.key, required this.foodName, required this.src});

  @override
  State<FoodRounded> createState() => _FoodRoundedState();
}

class _FoodRoundedState extends State<FoodRounded> {
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
    return isLoading
        ? Shimmer(
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFFFFFF),
              ),
            ),
          )
        : Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFFFFF),
                ),
                child: Center(
                  child: Image.asset(widget.src),
                ),
              ),
              Center(child: Text(widget.foodName))
            ],
          );
  }
}
