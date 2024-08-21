import 'package:flutter/material.dart';
import 'package:shimmer_app/widget/main_food_container.dart';

class MainFoodList extends StatelessWidget {
  const MainFoodList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 239,
      left: 43,
      child: Row(
        children: [
          MainFoodContainer(
            backgroundColor: Color(0xFFD5E2FD),
            label: 'Burger',
            imagePath: 'assest/image/burger.png',
          ),
          SizedBox(
            width: 22,
          ),
          MainFoodContainer(
            backgroundColor: Color(0xFFFFFCB0),
            label: 'Pizza',
            imagePath: 'assest/image/pizza.png',
            topPosttion: -15,
          ),
          SizedBox(
            width: 22,
          ),
          MainFoodContainer(
            backgroundColor: Color(0xFFBFFFD1),
            label: 'Pasta',
            imagePath: 'assest/image/pasta.png',
          ),
        ],
      ),
    );
  }
}
