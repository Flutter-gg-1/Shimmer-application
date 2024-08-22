import 'package:flutter/material.dart';

Widget buildImageContainers({
  required String image,
}) {
  return Container(
    height: 140,
    width: 90,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

Widget buildImageCircles({
  required String image,
}) {
  return Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      shape: BoxShape.circle,
    ),
  );
}
