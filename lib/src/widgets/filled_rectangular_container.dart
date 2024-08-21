import 'package:flutter/material.dart';

class FilledRectangularContainer extends StatelessWidget {
  final Color color;
  final String photoBath;
  final String text;
  const FilledRectangularContainer({super.key, required this.color, required this.photoBath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 138,
                    width: 77,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        )
                      ]
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(photoBath),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 8,),
                          child: Text(text, style: const TextStyle(fontSize: 12),),
                        ),
                      ],
                    ),
                  );
  }
}