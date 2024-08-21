import 'package:shimmer_application/background_shape.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer_application/food_data.dart';
import 'package:shimmer_application/widgets/main_food.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  children: List.generate(3, (index){
                    return SizedBox(
                      width: 77,
                      height: 138,
                      child: MainFood(
                        imgPath: mainFoodData[index]['imgPath'],
                        foodName: mainFoodData[index]['foodName'],
                        color: mainFoodData[index]['color'],
                        imgHeight: mainFoodData[index]['imgHeight'],
                        imgWidth: mainFoodData[index]['imgWidth'],
                        imgTop: mainFoodData[index]['imgTop'],
                        imgLeft: mainFoodData[index]['imgLeft'],
                        imgRight: mainFoodData[index]['imgRight'],
                        imgBottom: mainFoodData[index]['imgBottom']
                      )
                    );
                  }),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}