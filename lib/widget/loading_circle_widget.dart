



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class LoadingCircleWidget extends StatelessWidget {
  const LoadingCircleWidget({
    super.key,
  });


  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer(
        
          child: Container(
            height: 60,
            width: 60,
            decoration:  BoxDecoration(
                shape: BoxShape.circle, 
                gradient: const LinearGradient(colors: [
          
                   Color(0xffE8E8E8),
                  Color(0xff828282),
                ]),
                
                 boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), 
                    offset: const Offset(4, 4), 
                    blurRadius: 8, 
                    spreadRadius: 1, 
                  ),
                 ]
                
                ),
          
                
          
          
          ),
        ),

        Text("" , style: GoogleFonts.outfit(fontSize: 13),)
      ],
    );
  }
}
