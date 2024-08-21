// packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

// data
import 'package:shimmer_application/food_data.dart';

// widgets
import 'package:shimmer_application/background_shape.dart';
import 'package:shimmer_application/widgets/main_food.dart';
import 'package:shimmer_application/widgets/more_food.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomPaint(
              size: const Size(144, 800),
              painter: BackgroundShape(),
            ),
            Column(
              children: [
                const SizedBox(height: 15,),
                Image.asset('assets/logo.png'),
                const Row(children:[SizedBox(width: 32),Icon(Icons.menu, size: 35,)]),
                const SizedBox(height: 56,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 41),
                    Text("Delicious Food?\nGo Ahead...", style: GoogleFonts.outfit(fontSize: 15)),
                  ],
                ),
                const SizedBox(height: 57),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  isLoading ? List.generate(3, (index){
                    return Shimmer(
                      duration: const Duration(seconds: 1),
                      color: const Color(0xffe8e8e8),
                      child: const MainFood(
                        foodName: "",
                        imgPath: "",
                        color: Color(0xff828282),
                      ),
                    );
                  })

                  : List.generate(3, (index){
                    return MainFood(
                      imgPath: mainFoodData[index]['imgPath'],
                      foodName: mainFoodData[index]['foodName'],
                      color: mainFoodData[index]['color'],
                      imgHeight: mainFoodData[index]['imgHeight'],
                      imgWidth: mainFoodData[index]['imgWidth'],
                      imgTop: mainFoodData[index]['imgTop'],
                      imgLeft: mainFoodData[index]['imgLeft'],
                      imgRight: mainFoodData[index]['imgRight'],
                      imgBottom: mainFoodData[index]['imgBottom']
                    );
                  }),
                ),
                const SizedBox(height: 57),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xff3275FF)))),
                  child: Text('See More...', style: GoogleFonts.outfit(
                    color: const Color(0xff3275FF)
                  ),),
                ),
                const SizedBox(height: 16),
                isLoading ? Shimmer(
                  duration: const Duration(seconds: 1),
                  color: const Color(0xffe8e8e8),
                  child: const MoreFood(moreFoodList: []),
                )
                : MoreFood(moreFoodList: moreFoodData.sublist(0,4), imgSize: 60),
                const SizedBox(height: 11,),
                isLoading ? Shimmer(
                  duration: const Duration(seconds: 1),
                  color: const Color(0xffe8e8e8),
                  child: const MoreFood(moreFoodList: []),
                )
                : MoreFood(moreFoodList: moreFoodData.sublist(4), imgSize: 48)
              ],
            )
          ]
        ),
      ),
      bottomNavigationBar: NavigationBar(
        elevation: 10,
        shadowColor: Colors.black54,
        destinations: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.home_outlined, color: Color(0xffFF0202),size: 30)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined, color: Colors.black,size: 30)),
          IconButton(
            onPressed: (){},
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(0, 2),
                    blurRadius: 5
                  )
                ],
                shape: BoxShape.circle,color: Color(0xffFF6A6A)
              ),
              child: const Icon(Icons.shopping_cart_outlined, color: Colors.black,size: 30)
            )
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined, color: Colors.black,size: 30)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined, color: Colors.black,size:30))
        ],
      ),
    );
  }
}