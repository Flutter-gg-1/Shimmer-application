import 'package:assignment_14/background_shape.dart';
import 'package:flutter/material.dart';

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
                SizedBox(height: 15,),
                Image.asset('assets/logo.png'),
                Row(children:[SizedBox(width: 32),Icon(Icons.menu, size: 35,)]),
                SizedBox(height: 56,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 41),
                    Text("Delicious Food?\nGo Ahead...", style: TextStyle(fontSize: 15)),
                  ],
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}
