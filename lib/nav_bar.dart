import 'package:assignment_14/pages/home_page.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = [
    const HomePage(),
    const Text("data"),
    const Text("data"),
    const Text("data"),
    const Text("data"),
  ];
  int pageIndex = 0;
  var myColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(offset: Offset(0, -2), blurRadius: 5, color: Colors.grey)
        ]),
        child: BottomNavigationBar(
          currentIndex: pageIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color(0xffFF0202),
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_sharp), label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Color(0xffFF6A6A),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: ""),
          ],
          onTap: (int index) {
            pageIndex = index;
            setState(() {});
          },
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
