import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFood extends StatelessWidget {
  final String imgPath;
  final String foodName;
  final Color color;
  final double? imgHeight;
  final double? imgWidth;
  final double? imgTop;
  final double? imgLeft;
  final double? imgRight;
  final double? imgBottom;

  const MainFood(
    {super.key,
    required this.imgPath,
    required this.foodName,
    required this.color,
    this.imgHeight,
    this.imgWidth,
    this.imgTop,
    this.imgLeft,
    this.imgRight,
    this.imgBottom,
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77,
      height: 138,
      child: Card(
        color: color,
        elevation: 5,
        child: Stack(
          children: [
            Positioned(
              top: imgTop,
              left: imgLeft,
              right: imgRight,
              bottom: imgBottom,
              child: imgPath.isEmpty ? Container() : Image.asset(imgPath, width: imgWidth, height: imgHeight,)
            ),
            Positioned(
              top: 9,
              left: 7,
              child: Text(foodName, style: GoogleFonts.outfit(fontSize: 10))
            )
          ],
        ),
      ),
    );
  }
}