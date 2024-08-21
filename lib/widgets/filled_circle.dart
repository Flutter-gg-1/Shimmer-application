import 'package:flutter/material.dart';

class FilledCircle extends StatelessWidget {
  final String imgPath;
  final String title;
  const FilledCircle({super.key, required this.imgPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10,
                )
              ]),
          child: Image.asset(
            imgPath,
            fit: BoxFit.values[5],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
