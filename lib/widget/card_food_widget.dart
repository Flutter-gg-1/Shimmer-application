import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardFoodWidget extends StatelessWidget {
   CardFoodWidget({
    super.key, required this.tex, required this.img, required this.backColor,  this.wid =120,  this.height = 145,
  });


  final String tex;
  final String img;

  double wid;
  double height;

  final Color backColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 145,
        width: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
           
            color: backColor
            ,),
        child:
      
           
            Stack(
              
          children: [
            Positioned(
              bottom: -5,
              left: 5,
              child: ClipOval(child: Image.asset(img,height: height,width: wid,fit: BoxFit.contain,)),
            ),
      
            Padding(
              padding: const EdgeInsets.only(left: 7,top: 10),
              child: Text(
                tex,
                style: GoogleFonts.outfit(fontSize: 12),))
      
          ],
        ),
      ),
    );
  }
}
