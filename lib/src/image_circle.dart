import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//image rictangle container
Widget imageCircle({required image, required name}) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(125, 60, 60, 60),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: ClipOval(child: Image.asset(image,fit: BoxFit.values[2],)),
      ),
      Positioned(
          top: 60,
          left: 13,
          child: Text(name,
              style: GoogleFonts.outfit(
                  fontSize: 12, fontWeight: FontWeight.bold)))
    ],
  );
}
