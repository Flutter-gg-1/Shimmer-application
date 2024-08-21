import 'package:flutter/material.dart';

import 'package:shimmer_animation/shimmer_animation.dart';

class LoadingCardWidget extends StatelessWidget {
  const LoadingCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 145,
          width: 85,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(colors: [
                Color(0xffE8E8E8),
                Color(0xff828282),
              ])),
        ),
      ),
    );
  }
}
