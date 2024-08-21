
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustumizedBottomBar extends StatelessWidget {
  const CustumizedBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home_2_outline,
                color: Colors.red,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.heart_add_outline), label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.shopping_cart_bold,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.notification_bing_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]);
  }
}
