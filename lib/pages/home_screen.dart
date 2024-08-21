import 'package:assignment14/pages/fifth_screen.dart';
import 'package:assignment14/pages/first_screen.dart';
import 'package:assignment14/pages/fourth_screen.dart';
import 'package:assignment14/pages/second_screen.dart';
import 'package:assignment14/pages/third_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = const [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
    FifthScreen()
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Material( 
          elevation: 20,
          child: NavigationBar(
              backgroundColor: Colors.grey.shade100,
              selectedIndex: pageIndex,
              indicatorColor: const Color(0xffB9B9B9),
              onDestinationSelected: (value) {
                pageIndex = value;
                setState(() {});
              },
              destinations: [
                NavigationDestination(
                    icon: Image.asset("assets/home.png"), label: ""),
                NavigationDestination(
                    icon: Image.asset("assets/like.png"), label: ""),
                NavigationDestination(
                    icon: Image.asset("assets/Group 5.png"), label: ""),
                NavigationDestination(
                    icon: Image.asset("assets/notification.png"), label: ""),
                NavigationDestination(
                    icon: Image.asset("assets/profilecircle.png"), label: "")
              ]),
        ),
        body: pages[pageIndex]);
  }
}
