import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FoodTypes extends StatefulWidget {
  final String label, imagePath;
  const FoodTypes({
    super.key,
    required this.label,
    required this.imagePath,
  });

  @override
  State<FoodTypes> createState() => _FoodTypesState();
}

class _FoodTypesState extends State<FoodTypes> {
  late bool isLoading;
  @override
  void initState() {
    isLoading = true;
    Future.delayed(
      const Duration(seconds: 3),
      () => setState(() {
        isLoading = false;
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Shimmer(
            child: Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE8E8E8),
                      Color(0xFF828282),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.47, 1]),
                shape: BoxShape.circle,
                boxShadow: kElevationToShadow[4],
              ),
            ),
          )
        : Column(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: const EdgeInsets.only(right: 10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset(
                  widget.imagePath,
                  scale: 0.2,
                ),
              ),
              Text(
                widget.label,
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              )
            ],
          );
  }
}
