import 'package:flutter/material.dart';
import 'package:flutter_assginment4/customWidgets/catgory_widget.dart';
import 'package:flutter_assginment4/customWidgets/food_card.dart';

import 'customWidgets/rps_custom_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isLoding;

  @override
  void initState() {
    super.initState();
    isLoding = true;

    Future.delayed(const Duration(seconds: 5), () {
      isLoding = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  color: Color.fromARGB(85, 0, 0, 0),
                  offset: Offset(0, -4))
            ],
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30,
            selectedItemColor: const Color(0xffFF0202),
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.home_filled,
                  )),
              const BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.favorite_border_rounded,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.black54,
                      )
                    ], shape: BoxShape.circle, color: Color(0xffFF6A6A)),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                    ),
                  )),
              const BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.notifications_none_sharp,
                  )),
              const BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ))
            ],
          ),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              child: CustomPaint(
                size: const Size(144, 800),
                painter: RPSCustomPainter(),
              ),
            ),
            Positioned(
                top: 30,
                left: 150,
                child: Image.asset("assets/Food Offer.png")),
            const Positioned(
                top: 100,
                left: 40,
                child: Icon(
                  Icons.menu,
                  size: 40,
                )),
            const Positioned(
                top: 180,
                left: 50,
                child: Text(
                  "Delicious Food?\n Go Ahead...",
                  style: TextStyle(fontFamily: 'Outfit'),
                )),
            Positioned(
              top: 270,
              left: 70,
              child: Row(
                children: [
                  FoodCard(
                      name: "Burger",
                      imgUrl: "assets/burger.png",
                      isLoding: isLoding),
                  const SizedBox(width: 22),
                  FoodCard(
                      name: "Pizza",
                      imgUrl: "assets/pizza.png",
                      isLoding: isLoding),
                  const SizedBox(width: 22),
                  FoodCard(
                      name: "Pasta",
                      imgUrl: "assets/pasta.png",
                      isLoding: isLoding),
                ],
              ),
            ),
            Positioned(
                left: 150,
                bottom: 300,
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.blue)),
                  ),
                  child: const Text(
                    "See More...",
                    style: TextStyle(
                        color: Colors.blue, fontSize: 10, fontFamily: 'Outfit'),
                  ),
                )),
            Positioned(
              left: 30,
              bottom: 200,
              child: Row(
                children: [
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/vegan.png",
                      name: "vegan"),
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/seaFood.png",
                      name: "Sea Food"),
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/fastFood.png",
                      name: "Fast Food"),
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/kebab.png",
                      name: "kebab"),
                ],
              ),
            ),
            Positioned(
              left: 30,
              bottom: 100,
              child: Row(
                children: [
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/salad.png",
                      name: "Salad"),
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/dessert.png",
                      name: "Dessert"),
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/cake.png",
                      name: "Cake"),
                  CatgoryWidget(
                      isLoding: isLoding,
                      imgUrl: "assets/coffee.png",
                      name: "Coffee"),
                ],
              ),
            )
          ],
        ));
  }
}
