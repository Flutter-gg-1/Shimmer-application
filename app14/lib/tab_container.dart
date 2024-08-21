import 'package:app14/helpers/app_svg.dart';
import 'package:app14/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'helpers/color_ext.dart';

class TabContainer extends StatefulWidget {
  const TabContainer({super.key});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(0, -2),
            ),
          ]),
          child: TabBar(
            dividerColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            indicator: const BoxDecoration(
              shape: BoxShape.circle,
              color: C.orange,
            ),
            padding: const EdgeInsets.all(16),
            tabs: [
              SizedBox(width: 90, height: 50, child: Tab(icon: AppSvg.home)),
              SizedBox(width: 90, height: 50, child: Tab(icon: AppSvg.like)),
              SizedBox(width: 90, height: 50, child: Tab(icon: AppSvg.cart)),
              SizedBox(
                  width: 90, height: 50, child: Tab(icon: AppSvg.notification)),
              SizedBox(width: 90, height: 50, child: Tab(icon: AppSvg.profile)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
