import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_application/widget/card_food_widget.dart';
import 'package:shimmer_application/widget/circle_food_widget.dart';

class ImgShowWidget extends StatelessWidget {
  const ImgShowWidget({
    super.key,
  });

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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardFoodWidget(
              img: "assets/img/bur.png",
              tex: "Burger",
              backColor: const Color(0xffD5E2FD),
            ),
            const SizedBox(
              width: 30,
            ),
            CardFoodWidget(
              height: 160,
              wid: 110,
              img: "assets/img/piza.png",
              tex: "Pizza",
              backColor: const Color(0xffFFFCB0),
            ),
            const SizedBox(
              width: 30,
            ),
            CardFoodWidget(
              img: "assets/img/end.png",
              tex: "Pasta",
              backColor: const Color(0xffBFFFD1),
            )
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
            CircleFoodWidget(
              img: "assets/img/1.png",
              tex: "Vegan",
            ),
            CircleFoodWidget(
              img: "assets/img/2.png",
              tex: "Sea food",
            ),
            CircleFoodWidget(
              img: "assets/img/3.png",
              tex: "Fast food",
            ),
            CircleFoodWidget(
              img: "assets/img/4.png",
              tex: "Kebab",
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleFoodWidget(
              img: "assets/img/5.png",
              tex: "Salad",
            ),
            CircleFoodWidget(
              img: "assets/img/6.png",
              tex: "Dessert",
            ),
            CircleFoodWidget(
              img: "assets/img/7.png",
              tex: "Cake",
            ),
            CircleFoodWidget(
              img: "assets/img/8.png",
              tex: "Coffee",
            ),
          ],
        ),
        const SizedBox(
          height: 200,
        )
      ],
    );
  }
}
