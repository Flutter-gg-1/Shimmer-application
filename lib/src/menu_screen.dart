import 'package:flutter/material.dart';
import 'package:shimmer_app/src/const/image.dart';

class menuPhoto extends StatelessWidget {
  final String image;
  const menuPhoto({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 119,
      height: 138,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(image))),
    );
  }
}
