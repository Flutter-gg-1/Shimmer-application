import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class CatgoryWidget extends StatelessWidget {
  final bool isLoding;
  final String imgUrl;
  final String name;
  const CatgoryWidget(
      {super.key,
      required this.isLoding,
      required this.imgUrl,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return isLoding
        ? Shimmer(
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            ),
          )
        : Column(
            children: [
              Image.asset(
                scale: 1,
                imgUrl,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 9,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w600),
              )
            ],
          );
  }
}
