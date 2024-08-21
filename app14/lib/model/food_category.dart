import 'package:flutter/material.dart';

class FoodCategory {
  String title;
  Image img;

  FoodCategory({required this.title, required this.img});

  static List<FoodCategory> all = [
    FoodCategory(
      title: 'Vegan',
      img: Image.asset('assets/1.png', fit: BoxFit.cover),
    ),
    FoodCategory(
      title: 'Sea food',
      img: Image.asset('assets/2.png', fit: BoxFit.cover),
    ),
    FoodCategory(
      title: 'Fast food',
      img: Image.asset('assets/3.png', fit: BoxFit.cover),
    ),
    FoodCategory(
      title: 'Kebab',
      img: Image.asset('assets/4.png', fit: BoxFit.cover),
    ),
    FoodCategory(
      title: 'Salad',
      img: Image.asset('assets/5.png', fit: BoxFit.cover),
    ),
    FoodCategory(
      title: 'Dessert',
      img: Image.asset('assets/6.png', fit: BoxFit.cover),
    ),
    FoodCategory(
      title: 'Cake',
      img: Image.asset('assets/7.png', fit: BoxFit.cover),
    ),
    FoodCategory(
      title: 'Coffee',
      img: Image.asset('assets/8.png', fit: BoxFit.cover),
    ),
  ];
}
