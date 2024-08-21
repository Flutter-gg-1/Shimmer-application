import 'package:shimmer_application/background_shape.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                const Row(children:[const SizedBox(width: 32),Icon(Icons.menu, size: 35,)]),
                const SizedBox(height: 56,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 41),
                    Text("Delicious Food?\nGo Ahead...", style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    )),
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
