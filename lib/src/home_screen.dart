import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shimmer_app/src/const/food_screen.dart';
import 'package:shimmer_app/src/const/image.dart';
import 'package:shimmer_app/src/menu_screen.dart';
import 'package:shimmer_app/theme/background_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late bool isLoading;
  void initState() {
    super.initState();
    isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      isLoading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.house)),
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.heart)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.cartShopping)),
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.bell)),
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.user)),
            ],
          ),
        ),
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 172, 197),
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: Stack(clipBehavior: Clip.none, fit: StackFit.loose, children: [
          CustomPaint(
            size: Size(
                144,
                (888 * 5.594405594405594)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          Positioned(
              top: 20, // Position the icon as per your requirement
              left: 130,
              child: Image.asset('assets/Food_Offer.png', fit: BoxFit.cover)),
          Positioned(
            top: 40, // Position the icon as per your requirement
            left: 16, // Position the icon as per your requirement
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
          ),
          const Positioned(
              top: 130, // Position the icon as per your requirement
              left: 20,
              child: Text(
                'Delicious Food? \nGo Ahead...',
              )),
          const Positioned(
            top: 200,
            child:
                // If you want to add any shimmer widgets, you can add them here.

                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                menuPhoto(image: AppImage.imgburger),
                menuPhoto(image: AppImage.imgPizaa),
                menuPhoto(image: AppImage.imgPasta),
              ],
            ),
          ),
          const Positioned(
            top: 350,
            child: Row(
              children: [
                FoodRounded(foodName: "Vegon", src: "assets/vegon.png"),
                FoodRounded(foodName: "See food", src: "assets/sea_food.png"),
                FoodRounded(foodName: "Fast food", src: "assets/fast_food.png"),
                FoodRounded(foodName: "Kebab", src: 'assets/kabab.png'),
              ],
            ),
          ),
          const Positioned(
            top: 430,
            child: Row(
              children: [
                FoodRounded(foodName: "Vegon", src: "assets/salad.png"),
                FoodRounded(foodName: "See food", src: "assets/dessert.png"),
                FoodRounded(foodName: "Fast food", src: "assets/cake.png"),
                FoodRounded(foodName: "Kebab", src: 'assets/coffe.png'),
              ],
            ),
          ),
        ]));
  }
}
