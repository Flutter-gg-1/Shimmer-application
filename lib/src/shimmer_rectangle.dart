import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

//shimmer rictangle container
Widget shimmerRictangle() {
  return Container(
    height: 180,
    width: 95,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(125, 60, 60, 60),
          spreadRadius: 1,
          blurRadius: 15,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Shimmer(
        direction: const ShimmerDirection.fromRTLB(),
        duration: const Duration(seconds: 3),
        colorOpacity: 0.2,
        color: Colors.black,
        child: Container(
            height: 180,
            width: 95,
            decoration: const BoxDecoration(
              color: Colors.white,
            )),
      ),
    ),
  );
}
