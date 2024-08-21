import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFood extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final double? imgHeight;
  final double? imgWidth;
  final double? imgTop;
  final double? imgLeft;
  final double? imgRight;
  final double? imgBottom;
  final Color color;

  const MainFood(
    {super.key,
    required this.imgPath,
    required this.foodName,
    required this.color,
    required this.imgHeight,
    required this.imgWidth,
    required this.imgTop,
    required this.imgLeft,
    required this.imgRight,
    required this.imgBottom,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 5,
      child: Stack(
        children: [
          Positioned(
            top: imgTop,
            left: imgLeft,
            right: imgRight,
            bottom: imgBottom,
            child: Image.asset(imgPath, width: imgWidth, height: imgHeight,)
          ),
          Positioned(
            top: 9,
            left: 7,
            child: Text(foodName, style: GoogleFonts.outfit(fontSize: 10))
          )
        ],
      ),
    );
  }
}