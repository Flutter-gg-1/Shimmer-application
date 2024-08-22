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
  late bool isLoading = false;
  @override
  void initState() {
    super.initState();
    isLoading = false;
    Future.delayed(const Duration(seconds: 5), () {
      isLoading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Shimmer(
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 173, 173, 173),
              ),
            ),
          )
        : Column(
            children: [
              Container(
                height: 100,
                width: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // color: Color(0xFFFFFFFF),
                ),
                child: Center(
                  child: Image.asset(widget.src),
                ),
              ),
              // Center(child: Text(widget.foodName))
            ],
          );
  }
}
