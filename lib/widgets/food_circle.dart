import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FoodCircle extends StatefulWidget {
  final String imagePath;
  final String foodName;
  const FoodCircle({super.key, required this.imagePath, required this.foodName});

  @override
  State<FoodCircle> createState() => _FoodCircleState();
}

class _FoodCircleState extends State<FoodCircle> {
  late bool isLoading;

  @override
  void initState() {
    isLoading = true;
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ? Shimmer(
      duration: const Duration(seconds: 1),
      direction: const ShimmerDirection.fromLeftToRight(),
      child: Container(
        height: 48,
        width: 48,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(153, 153, 153, 1)
          ]),
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                spreadRadius: -1,
                offset: Offset(0, -1),
                color: Color.fromRGBO(0, 0, 0, 0.25))
          ],
        ),
      ),
    )
    :
   Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.imagePath,
            height: 57,
            width: 60,
            fit: BoxFit.cover,),
            Text(widget.foodName, style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500),)
          ],
        ),
      )
    ;
  }
}