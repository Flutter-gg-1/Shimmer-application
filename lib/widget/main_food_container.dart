import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class MainFoodContainer extends StatefulWidget {
  final Color backgroundColor;
  final String label, imagePath;
  final double? topPosttion;
  const MainFoodContainer({
    super.key,
    required this.backgroundColor,
    required this.label,
    required this.imagePath,
    this.topPosttion,
  });

  @override
  State<MainFoodContainer> createState() => _MainFoodContainerState();
}

class _MainFoodContainerState extends State<MainFoodContainer> {
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
              width: 100,
              height: 160,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      Color(0xFFE8E8E8),
                      Color(0xFF828282),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.47, 1]),
                borderRadius: BorderRadius.circular(12),
                boxShadow: kElevationToShadow[4],
              ),
            ),
          )
        : Stack(
            children: [
              Container(
                width: 100,
                height: 160,
                decoration: BoxDecoration(
                  color: widget.backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Positioned(
                top: widget.topPosttion ?? 10,
                left: 20,
                width: 100,
                child: Image.asset(widget.imagePath),
              ),
              Positioned(
                left: 6,
                top: 10,
                child: Text(
                  widget.label,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
  }
}
