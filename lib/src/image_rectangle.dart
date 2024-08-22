import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//image rictangle container
Widget imageRictangle({required image, required color, required name}) {
  return Stack(
    children: [
      Container(
        height: 180,
        width: 95,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(125, 60, 60, 60),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              fit:BoxFit.values[3],
            )),
      ),
      Positioned(
          top: 15,
          left: 10,
          child: Text(name, style: GoogleFonts.outfit(fontSize: 12)))
    ],
  );
}
