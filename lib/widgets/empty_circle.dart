import 'package:flutter/material.dart';

class EmptyCircle extends StatelessWidget {
  const EmptyCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [Color(0xffffffff), Color(0xff999999)],
              begin: Alignment.topLeft),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurStyle: BlurStyle.outer,
              blurRadius: 10,
            )
          ]),
    );
  }
}
