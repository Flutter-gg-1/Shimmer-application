import 'package:flutter/material.dart';

class FilledCircularContainer extends StatelessWidget {
  final String photoPath;
  final String text;
  const FilledCircularContainer({super.key, required this.photoPath, required this.text});

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
                              ]
                            ),
                          child: Image.asset(photoPath, fit: BoxFit.values[5],),
                          ),
                          const SizedBox(height: 5,),
                          Text(text, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
      ],
    );
  }
}