import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FoodCard extends StatelessWidget {
  final bool isLoding;
  final String name;
  final String imgUrl;
  const FoodCard(
      {super.key,
      required this.name,
      required this.imgUrl,
      required this.isLoding});

  @override
  Widget build(BuildContext context) {
    return isLoding
        ? Shimmer(
            child: Container(
              height: 138,
              width: 77,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  boxShadow: kElevationToShadow[3],
                  borderRadius: BorderRadius.circular(15)),
            ),
          )
        : Container(
            height: 138,
            width: 77,
            decoration: BoxDecoration(
                boxShadow: kElevationToShadow[3],
                borderRadius: BorderRadius.circular(15)),
            child: Stack(
              children: [
                Image.asset(imgUrl),
                Positioned(
                    top: 10,
                    left: 6,
                    child: Text(
                      name,
                      style:
                          const TextStyle(fontSize: 10, fontFamily: 'Outfit'),
                    ))
              ],
            ),
          );
  }
}
