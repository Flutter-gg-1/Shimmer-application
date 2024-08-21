import 'package:flutter/material.dart';


import 'package:shimmer_application/shape/my_painter.dart';
import 'package:shimmer_application/widget/bottom_navigation_bar_widget.dart';
import 'package:shimmer_application/widget/img_show_widget.dart';


import 'package:shimmer_application/widget/loding_img_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

 
}

class _HomePageState extends State<HomePage> {

   bool isLoding = true;


   @override
  void initState() {
     Future.delayed(const Duration(seconds: 4),(){

      isLoding = false;
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: Stack(
        children: [
          CustomPaint(
            size: const Size(145, double.infinity),
            painter: MyPainter(),
          ),
           SingleChildScrollView(
            child: isLoding == true ?  LodingImgWidget()
            
            : const ImgShowWidget()
          )
        ],
      ),
    );
  }
}

