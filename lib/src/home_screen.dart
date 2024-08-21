import 'package:flutter/material.dart';
import 'widgets/custom_painting.dart';
import 'widgets/rectangle_containers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
              size: const Size(144, 1000), 
              painter: RPSCustomPainter(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 90, left: 30),
            child: Icon(Icons.menu, size: 35,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 160, right: 80),
            child: Image.asset("assets/Food Offer.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 180, left: 50),
            child: Text("Delicious Food?\nGo Ahead...", style: TextStyle(fontSize: 16, color: Colors.black),),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 300, left: 50),
            child: Row(
              children: [
                RectangleContainers(),
                Padding(padding: EdgeInsets.only(left: 44)),
                RectangleContainers(),
                Padding(padding: EdgeInsets.only(left: 44)),
                RectangleContainers(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 500, left: 190),
            child: Column(
              children: [
                Text("See More...", style: TextStyle(fontSize: 13, color: Color(0xff3275FF)),),
                SizedBox(
                  width: 72,
                  child: Divider(
                    color: Color(0xff3275FF),
                  )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
