import 'package:flutter/material.dart';
import 'package:shimmer_app/widget/food_types.dart';

class FoodTypesList extends StatelessWidget {
  const FoodTypesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        top: 480,
        left: 60,
        child: Column(
          children: [
            Row(
              children: [
                FoodTypes(
                  label: 'Vegan',
                  imagePath: 'assest/image/vegan.png',
                ),
                FoodTypes(
                  label: 'Sea food',
                  imagePath: 'assest/image/sea_food.png',
                ),
                FoodTypes(
                  label: 'Fast food',
                  imagePath: 'assest/image/fast_food.png',
                ),
                FoodTypes(
                  label: 'Kebab',
                  imagePath: 'assest/image/kebab.png',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                FoodTypes(
                  label: 'Salad',
                  imagePath: 'assest/image/salad.png',
                ),
                FoodTypes(
                  label: 'Dessert',
                  imagePath: 'assest/image/dessert.png',
                ),
                FoodTypes(
                  label: 'Cake',
                  imagePath: 'assest/image/cake.png',
                ),
                FoodTypes(
                  label: 'Coffee',
                  imagePath: 'assest/image/coffe.png',
                ),
              ],
            ),
          ],
        ));
  }
}
