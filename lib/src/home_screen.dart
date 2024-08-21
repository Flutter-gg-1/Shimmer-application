import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'widgets/circular_containers.dart';
import 'widgets/custom_painting.dart';
import 'widgets/filled_circular_container.dart';
import 'widgets/filled_rectangular_container.dart';
import 'widgets/rectangle_containers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isloading;
  @override
  void initState() {
    isloading = true;
    Future.delayed(const Duration(seconds: 5), (){
      isloading = false;
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey
          )
        ]),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Color(0xffFF0202), size: 28,), label: "", ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline, color: Colors.black, size: 28,), label: ""),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundColor: Color(0xffFF6A6A),child: Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 28,),), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.doorbell_outlined, color: Colors.black, size: 28,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, color: Colors.black, size: 28,), label: ""),
        ],
        showSelectedLabels: false,
        elevation: 50,),
      ),
      body: Stack(
        children: [
          CustomPaint(
              size: const Size(144, 1000), 
              painter: RPSCustomPainter(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 130, left: 30),
            child: Icon(Icons.menu, size: 35,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 160, right: 80),
            child: Image.asset("assets/Food Offer.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 220, left: 50),
            child: Text("Delicious Food?\nGo Ahead...", style: TextStyle(fontSize: 16, color: Colors.black),),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 320,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               isloading? Shimmer(child: const SizedBox(
                height: 138,
                    width: 77,
                child: RectangleContainers())): 
                const SizedBox(
                  height: 138,
                    width: 77,
                  child: FilledRectangularContainer(color: Color(0xffD5E2FD), photoBath: 'assets/burger1.png', text: 'Burger',)),
                isloading? Shimmer(child: const SizedBox(
                height: 138,
                    width: 77,
                child: RectangleContainers())): 
                const SizedBox(
                  height: 138,
                    width: 77,
                  child: FilledRectangularContainer(color: Color(0xffD5E2FD), photoBath: 'assets/pizza1.png', text: 'Pizaa',)),
                isloading? Shimmer(child: const SizedBox(
                height: 138,
                    width: 77,
                child: RectangleContainers())): 
                const SizedBox(
                  height: 138,
                    width: 77,
                  child: FilledRectangularContainer(color: Color(0xffD5E2FD), photoBath: 'assets/pasta.png', text: 'Pasta',)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 520, left: 190),
            child: Column(
              children: [
                Text("See More...", style: TextStyle(fontSize: 13, color: Color(0xff3275FF)),),
                SizedBox(
                  width: 72,
                  child: Divider(
                    color: Color(0xff3275FF),
                  )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 570, left: 60),
            child: Row(
              children: [
                isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Vegan', photoPath: 'assets/vegan.png',),
                const Padding(padding: EdgeInsets.only(left: 33)),
                isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Sea food', photoPath: 'assets/seaFood.png',),
                const Padding(padding: EdgeInsets.only(left: 33)),
               isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Fast food', photoPath: 'assets/fastfood.png',),
                const Padding(padding: EdgeInsets.only(left: 33)),
                isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Kebab', photoPath: 'assets/kebab.png',),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 670, left: 60),
            child: Row(
              children: [
                isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Salad', photoPath: 'assets/salad.png',),
                const Padding(padding: EdgeInsets.only(left: 33)),
                isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Dessert', photoPath: 'assets/dessert1.png',),
                const Padding(padding: EdgeInsets.only(left: 50)),
                isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Cake', photoPath: 'assets/cake.png',),
                const Padding(padding: EdgeInsets.only(left: 40)),
                isloading? Shimmer(child: const CircularContainers()):
                const FilledCircularContainer(text: 'Coffee', photoPath: 'assets/coffee.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
