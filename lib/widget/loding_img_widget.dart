



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_application/widget/loading_card_widget.dart';
import 'package:shimmer_application/widget/loading_circle_widget.dart';

class LodingImgWidget extends StatelessWidget {
  const LodingImgWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Align(
              alignment: Alignment.center,
              child: Image.asset("assets/img/Food Offer.png")),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 35),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Icon(
                Icons.menu,
                size: 30,
              )),
        ),
        const SizedBox(
          height: 56,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Delicious Food?\nGo Ahead...",
                  style: GoogleFonts.outfit(fontSize: 15))),
        ),
        const SizedBox(
          height: 65,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          LoadingCardWidget(),
            SizedBox(
              width: 30,
            ),
            LoadingCardWidget(),
            SizedBox(
              width: 30,
            ),
            LoadingCardWidget(),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            Text(
              "See More...",
              style: GoogleFonts.outfit(
                  fontSize: 13, color: const Color(0xff3275FF)),
            ),
            const Divider(
              color: Color(0xff3275FF),
              thickness: 1.4,
              endIndent: 130,
              indent: 130,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           LoadingCircleWidget(),
           LoadingCircleWidget(),
           LoadingCircleWidget(),
           LoadingCircleWidget(),
           
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          LoadingCircleWidget(),
          LoadingCircleWidget(),
          LoadingCircleWidget(),
          LoadingCircleWidget(),
          ],
        ),
        const SizedBox(
          height: 200,
        )
      ],
    );
  }
}