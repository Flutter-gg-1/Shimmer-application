import 'package:flutter/material.dart';
import 'package:shimmer_app/screens/food_offer.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shimmer_app/screens/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    const WelcomeScreen(),
    const WelcomeScreen(),
    const FoodOffer(),
    const WelcomeScreen(),
    const WelcomeScreen(),
  ];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                offset: Offset(0, -4),
                color: Color.fromRGBO(0, 0, 0, 0.25))
          ],
        ),
        child: NavigationBar(
          selectedIndex: pageIndex,
          destinations: [
            const NavigationDestination(
                icon: Icon(
                  AntDesign.home_outline,
                  color: Color.fromRGBO(255, 2, 2, 1),
                ),
                label: ''),
            const NavigationDestination(
                icon: Icon(AntDesign.heart_outline), label: ''),
            NavigationDestination(
                icon: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 106, 106, 1),
                      shape: BoxShape.circle),
                  child: const Icon(
                    AntDesign.shopping_cart_outline,
                  ),
                ),
                label: ''),
            const NavigationDestination(
                icon: Icon(AntDesign.bell_outline), label: ''),
            const NavigationDestination(
                icon: Icon(
                  AntDesign.user_outline,
                ),
                label: ''),
          ],
          onDestinationSelected: (index) {
            if (pageIndex != index) {
              setState(() {
                pageIndex = index;
              });
            }
          },
        ),
      ),
    );
  }
}
