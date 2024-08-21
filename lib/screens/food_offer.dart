import 'package:flutter/material.dart';
import 'package:shimmer_app/widgets/food_card.dart';
import 'package:shimmer_app/widgets/food_circle.dart';
import '../utils/colored_side.dart';

class FoodOffer extends StatefulWidget {
  const FoodOffer({super.key});

  @override
  State<FoodOffer> createState() => _FoodOfferState();
}

class _FoodOfferState extends State<FoodOffer> {
  List<String> mainImages = [
    'assets/images/burger.png',
    'assets/images/pizza.png',
    'assets/images/pasta.png'
  ];

  List<String> dishes = [
    'assets/images/food1.png',
    'assets/images/food2.png',
    'assets/images/food3.png',
    'assets/images/food4.png',
    'assets/images/food5.png',
    'assets/images/food6.png',
    'assets/images/food7.png',
    'assets/images/food8.png',
  ];

  List<String> foodNames = [
    'Vegan',
    'Sea food',
    'Fast food',
    'Kebab',
    'Salad',
    'Dessert',
    'Cake',
    'Coffee'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              child: CustomPaint(
                size: const Size(144, 800),
                painter: ColoredSide(),
              ),
            ),
            const Positioned(
                top: 60,
                left: 32,
                child: Icon(
                  Icons.menu,
                  size: 35,
                )),
            Positioned(
                top: 16,
                left: 125,
                child: Image.asset('assets/images/logo.png')),
            const Positioned(
              top: 150,
              left: 40,
              child: Column(
                children: [
                  Text('Delicious Food? ', style: TextStyle(fontSize: 15)),
                  Text(
                    'Go Ahead...',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 239,
              left: 43,
              child: SizedBox(
                height: 138,
                width: 275,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) {
                      return FoodCard(imagePath: mainImages[index]);
                    })),
              ),
            ),
            Positioned(
                top: 434,
                left: 143,
                child: Container(
                  height: 17,
                  width: 72,
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(50, 117, 255, 1)))),
                  child: const Center(
                    child: Text(
                      'See More...',
                      style: TextStyle(
                          fontSize: 10, color: Color.fromRGBO(50, 117, 255, 1)),
                    ),
                  ),
                )),
            Positioned(
              top: 467,
              left: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 321,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        return FoodCircle(
                          imagePath: dishes[index],
                          foodName: foodNames[index],
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 70,
                    width: 321,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(4, (index) {
                          return FoodCircle(
                              imagePath: dishes[index + 4],
                              foodName: foodNames[index + 4]);
                        })),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
