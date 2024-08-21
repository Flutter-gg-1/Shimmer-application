import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CircleFoodWidget extends StatelessWidget {
  const CircleFoodWidget({
    super.key, required this.tex, required this.img,
  });


  final String tex;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration:  BoxDecoration(
              shape: BoxShape.circle, color: const Color(0xffFFFFFF),
              
               boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), 
                  offset: const Offset(4, 4), 
                  blurRadius: 8, 
                  spreadRadius: 1, 
                ),
               ]
              
              ),
        
              child: ClipOval(child: Image.asset(img, fit: BoxFit.contain,width: 70,height: 70,)),
        
        
        ),

        Text(tex , style: GoogleFonts.outfit(fontSize: 13),)
      ],
    );
  }
}
