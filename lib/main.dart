import 'package:flutter/material.dart';
import 'package:shimmer_application/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white, 
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white
      )
      ),
      home: const HomeScreen()
    );
  }
}
