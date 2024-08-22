import 'package:flutter/material.dart';

Widget buildGradientContainer() {
  return Container(
    height: 138,
    width: 90,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color(0x47E8E8E8), Color(0xff828282)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

Widget buildGradientCircle() {
  return Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color(0x47E8E8E8), Color(0xff828282)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      shape: BoxShape.circle,
    ),
  );
}
