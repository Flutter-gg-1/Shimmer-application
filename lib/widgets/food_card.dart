import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class FoodCard extends StatefulWidget {
  final String imagePath;
  const FoodCard({super.key, required this.imagePath});

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
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
        height: 138,
        width: 77,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(232, 232, 232, 1),
            Color.fromRGBO(130, 130, 130, 1)
          ]),
          boxShadow: const [
            BoxShadow(
                blurRadius: 6,
                offset: Offset(0, 2),
                color: Color.fromRGBO(0, 0, 0, 0.25))
          ],
        ),
      ),
    )
    :
    Container(
        height: 138,
        width: 77,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                blurRadius: 6,
                offset: Offset(0, 2),
                color: Color.fromRGBO(0, 0, 0, 0.25))
          ],
        ),
        child: Image.asset(widget.imagePath),
      )
    ;
  }
}
