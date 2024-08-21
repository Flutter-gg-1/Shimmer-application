import 'package:flutter/material.dart';

class EmptyRectangle extends StatelessWidget {
  const EmptyRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      width: 77,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [ Color(0xffE8E8E8), Color(0xff828282)],
              begin: Alignment.topLeft),
          borderRadius: BorderRadius.circular(7),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurStyle: BlurStyle.outer,
              blurRadius: 10,
            )
          ]),
    );
  }
}
