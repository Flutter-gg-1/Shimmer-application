import 'package:flutter/material.dart';
import 'package:shimmwr_application/home_page_loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageLoading(),
    );
  }
}
