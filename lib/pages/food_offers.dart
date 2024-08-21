import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

class FoodOfferPage extends StatefulWidget {
  @override
  _FoodOfferPageState createState() => _FoodOfferPageState();
}

class _FoodOfferPageState extends State<FoodOfferPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
   
    Timer(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        
          Positioned.fill(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/Vector.png', 
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width *
                    0.4, 
              ),
            ),
          ),
        
          SafeArea(
            child: Column(
              children: [
              
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      Transform.translate(
                        offset: Offset(
                            0, 18),
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                          size: 32,
                        ),
                      ),
                   
                      Image.asset(
                        'assets/images/logo.jpeg', 
                        height: 40.0, 
                      ),
                   
                      SizedBox(),  for balance
                    ],
                  ),
                ),

                SizedBox(height: 16.0),
             
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Delicious Food?\nGo Ahead...',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildFoodCard('Burger', 'assets/images/rectangle_22.png',
                          Color.fromRGBO(213, 226, 253, 1), 155, -27.0, 16.0),
                      _buildFoodCard('Pizza', 'assets/images/rectangle_222.png',
                          Color.fromRGBO(255, 252, 176, 1), 180, -21.0, 8.0),
                      _buildFoodCard('Pasta', 'assets/images/rectangle_221.png',
                          Color.fromRGBO(191, 255, 209, 1), 135, -27.0, 18.0),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
              
                Stack(
                  children: [
                  
                    Positioned(
                      bottom: -4,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 1.5,
                        color: Colors.blueAccent,
                        margin: EdgeInsets.only(bottom: 4.0),
                      ),
                    ),
                   
                    Text(
                      'See More...',
                      style: TextStyle(
                        fontSize: 12.6,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategoryIcon(
                          'Vegan', 'assets/images/ellipse_21.png'),
                      _buildCategoryIcon(
                          'Sea Food', 'assets/images/ellipse_26.png'),
                      _buildCategoryIcon(
                          'Fast Food', 'assets/images/ellipse_22.png'),
                      _buildCategoryIcon(
                          'Kebab', 'assets/images/ellipse_25.png'),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCategoryIcon(
                          'Salad', 'assets/images/ellipse_2.png'),
                      _buildCategoryIcon(
                          'Dessert', 'assets/images/ellipse_27.png'),
                      _buildCategoryIcon(
                          'Cake', 'assets/images/ellipse_24.png'),
                      _buildCategoryIcon(
                          'Coffee', 'assets/images/ellipse_23.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
     
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/vector_14_x2.svg', 
              color: Colors.red,
              height: 35.0, 
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/iconsax_linearlike_x2.svg', 
              color: Colors.black,
              height: 35.0, 
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/group_51_x2.svg',
              height: 35.0, 
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/iconsax_linearnotification_x2.svg', 
              color: Colors.black,
              height: 35.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/vectors/iconsax_linearprofilecircle_x2.svg', 
              color: Colors.black,
              height: 35.0, 
            ),
            label: '',
          ),
        ],
      ),
    );
  }

 
  Widget _buildFoodCard(
    String title,
    String imagePath,
    Color color,
    double size,
    double right,
    double top,
  ) {
    return _isLoading
        ? Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            period: Duration(seconds: 3),
            child: Container(
              width: 80.0,
              height: 170.0,
              margin: EdgeInsets.only(left: 16.0),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          )
        : Container(
            width: 80.0,
            height: 170.0,
            margin: EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
               
                Positioned(
                  top: 15.0,
                  left: 8.0,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
               
                Positioned(
                  right: right,
                  top: top,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      imagePath,
                      height: size,
                    ),
                  ),
                ),
              ],
            ),
          );
  }


  Widget _buildCategoryIcon(String title, String imagePath) {
    return _isLoading
        ? Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            period: Duration(seconds: 3),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 8.0),
                Container(
                  width: 48.0,
                  height: 48.0,
                  color: Colors.grey[300],
                ),
              ],
            ),
          )
        : Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(imagePath),
                radius: 30.0,
              ),
              SizedBox(height: 8.0),
              Text(
                title,
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
              ),
            ],
          );
  }
}
