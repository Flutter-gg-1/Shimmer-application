import 'package:flutter/material.dart';

class FoodItem {
  String title;
  Image img;

  FoodItem({required this.title, required this.img});

  static List<FoodItem> all = [
    FoodItem(
      title: 'Burger',
      img: Image.asset('assets/burger.png', fit: BoxFit.contain),
    ),
    FoodItem(
      title: 'Pizza',
      img: Image.asset('assets/pizza.png', fit: BoxFit.contain),
    ),
    FoodItem(
      title: 'Pasta',
      img: Image.asset('assets/pasta.png', fit: BoxFit.contain),
    ),
  ];
}
