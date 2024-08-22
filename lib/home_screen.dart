import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:shimmer_application/constants/colors.dart';
import 'package:shimmer_application/constants/images.dart';
import 'package:shimmer_application/widghts/background_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      isLoading = false;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                ),
                child: Icon(Icons.account_circle, size: 100, color: Colors.white),
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
                (800 * 5.555555555555555).toDouble(),
              ),
              painter: RPSCustomPainter(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 150, left: 40),
              child: Text(
                'Delicious Food?\nGo Ahead...',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: CardFood(
                      title: 'Burger',
                      image: AppImages.burger,
                      color: AppColors.purple,
                      isLoading: true,
                    ),
                  ),
                  Flexible(
                    child: CardFood(
                      title: 'Pizza',
                      image: AppImages.pizza,
                      color: AppColors.yellow,
                      isLoading: true,
                    ),
                  ),
                  Flexible(
                    child: CardFood(
                      title: 'Pasta',
                      image: AppImages.pasta,
                      color: AppColors.green,
                      isLoading: true,
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 450,
              left: 180,
              child: Text(
                'See More...',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                children: const [
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Vegan',
                    image: AppImages.burger,
                    isLoading: true,
                  ),
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Sea food',
                    image: AppImages.burger,
                    isLoading: true,
                  ),
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Fast food',
                    image: AppImages.burger,
                    isLoading: true,
                  ),
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Kebab',
                    image: AppImages.burger,
                    isLoading: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 600.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                children: const [
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Vegan',
                    image: AppImages.burger,
                    isLoading: true,
                  ),
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Sea food',
                    image: AppImages.burger,
                    isLoading: true,
                  ),
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Cake',
                    image: AppImages.cake,
                    isLoading: true,
                  ),
                  SizedBox(width: 20),
                  FoodCategoryCard(
                    title: 'Kebab',
                    image: AppImages.burger,
                    isLoading: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(Icons.home, color: Colors.red),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              activeIcon: Icon(Icons.favorite, color: Colors.red),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              activeIcon: CircleAvatar(
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.shopping_cart, color: Colors.black),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              activeIcon: Icon(Icons.notifications, color: Colors.red),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person, color: Colors.red),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class CardFood extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final bool isLoading;
  
  const CardFood({
    super.key,
    required this.title,
    required this.image,
    required this.color,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 360,
      child: isLoading
          ? Shimmer(
              color: Colors.grey[300]!,
              child: Container(
                color: Colors.grey,
              ),
            )
          : Card(
              color: color,
              elevation: 6,
              margin: const EdgeInsets.only(top: 200, left: 20, right: 20),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: ListTile(
                      title: Text(
                        title,
                        style: const TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class FoodCategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final bool isLoading;

  const FoodCategoryCard({
    super.key,
    required this.title,
    required this.image,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isLoading
            ? Shimmer(
               color: Colors.grey[300]!,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                ),
              )
            : Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
