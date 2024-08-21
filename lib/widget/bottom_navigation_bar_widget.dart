import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 60,
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      fixedColor: const Color(0xffFF6A6A),
      backgroundColor: const Color(0xffFFFFFF),
      items: [
        BottomNavigationBarItem(
            label: "",
            icon: IconButton(
              icon: const Icon(FontAwesome.house_solid),
              onPressed: () {},
            )),
        BottomNavigationBarItem(
            label: "",
            icon: IconButton(
              icon: const Icon(FontAwesome.heart, color: Colors.black,),
              onPressed: () {},
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFF6A6A)
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 4),
                child: IconButton(
                  icon: const Icon(FontAwesome.cart_shopping_solid, color: Colors.black),
                  onPressed: () {},
                ),
              ),
            )),
        BottomNavigationBarItem(
            label: "",
            icon: IconButton(
              icon: const Icon(Icons.notification_add_outlined,size: 30, color: Colors.black),
              onPressed: () {},
            )),

            BottomNavigationBarItem(
            label: "",
            icon: IconButton(
              icon: const Icon(Icons.person,size: 30, color: Colors.black),
              onPressed: () {},
            )),
      ],
    );
  }
}
