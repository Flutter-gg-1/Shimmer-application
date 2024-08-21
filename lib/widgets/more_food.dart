import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreFood extends StatelessWidget {
  final List<Map<String, dynamic>> moreFoodList;
  final double imgSize;
  const MoreFood({super.key, required this.imgSize, required this.moreFoodList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(moreFoodList.length, (index) {
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black54,offset: Offset(0, 2),blurRadius: 5)]
                ),
                child: Image.asset(moreFoodList[index]['imgPath'],width: imgSize,height: 48)
              ),
              const SizedBox(height: 5),
              Text(
                moreFoodList[index]['foodName'],
                style: GoogleFonts.outfit(fontSize: 9, fontWeight: FontWeight.w500),
              )
            ],
          );
        }),
      ),
    );
  }
}