import 'package:flutter/material.dart';


class RectangleContainers extends StatelessWidget {
  const RectangleContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                      height: 138,
                      width: 77,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [const Color(0xffE8E8E8).withOpacity(0.4), const Color(0xff828282)], begin: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 10,
                          )
                        ]
                      ),
                    ),        
      ],
    );
    
  }
}