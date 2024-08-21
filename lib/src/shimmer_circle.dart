import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

//shimmer circle container
Widget shimmerCircle() {
  return Container(
    height: 60,
    width: 60,
    decoration: const BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(125, 60, 60, 60),
          spreadRadius: 1,
          blurRadius: 15,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: ClipOval(
      child: Shimmer(
        direction: const ShimmerDirection.fromRTLB(),
        duration: const Duration(seconds: 3),
        colorOpacity: 0.2,
        color: Colors.black,
        child: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
            )),
      ),
    ),
  );
}
