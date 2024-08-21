import 'package:flutter/material.dart';
import 'package:shimmer_application/constants/colors.dart';
import 'package:shimmer_application/constants/images.dart';
import 'package:shimmer_application/widghts/background_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
              //Add Drawer for user info
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                    ),
                    child: Icon(Icons.account_circle,
                        size: 100, color: Colors.white),
                  ),
                  ListTile(
                    title: const Text('Information'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Logout'),
                    onTap: () {
                      // Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Center(
                child: Image.asset(
                  AppImages.logo,
                  width: 100,
                ),
              ),
            ),
            body: Stack(
              children: [
                CustomPaint(
                  size: Size(
                      144,
                      (800 * 5.555555555555555)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 150, left: 40),
                  child: Text('Delicious Food?\nGo Ahead...', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
                ),
                const SizedBox(
  width: 130,
  height: 360,
  child: Card(
    margin: EdgeInsets.only(top: 200, left: 20, right: 20),
    child: Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: AssetImage(AppImages.burger),
            fit: BoxFit.cover, 
          ),
        ),
        Positioned(
          child: ListTile(
            title: Text(
              'Burger',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10
              ),
            ),
          ),
        ),
      ],
    ),
  ),
                )
              ],
            )));
  }
}
