import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_offger/widget/food_card.dart';
import 'package:food_offger/widget/food_rounded.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset("assets/Food Offer.jpg"),
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      ),
      drawer: const Drawer(),
      body: Stack(
        children: [
          CustomPaint(
            size: Size(100, (900 * 5.555555555555555).toDouble()),
            painter: RPSCustomPainter(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Divider(
                  color: Colors.transparent,
                  height: 59,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Delicious Food?\nGo Ahead..."),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FoodCard(
                      color: Color(0xffd5e2fd),
                      foodName: 'Burger',
                      src: "assets/burger.png",
                    ),
                    FoodCard(
                      color: Color(0xfffffcb0),
                      foodName: 'Pasta',
                      src: "assets/pizza.png",
                    ),
                    FoodCard(
                      color: Color(0xffbfffd1),
                      foodName: 'Pasta',
                      src: "assets/pasta.png",
                    ),
                  ],
                ),
                DefaultTabController(
                  length: 1,
                  child: Column(
                    children: [
                      const TabBar(
                        indicatorColor: Colors.blue,
                        dividerHeight: 0,
                        tabs: [
                          Tab(
                            child: Text(
                                style: TextStyle(color: Colors.blue),
                                "See More..."),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: double.infinity,
                        child: const TabBarView(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FoodRounded(
                                        foodName: "Vegon",
                                        src: "assets/vegon.png"),
                                    FoodRounded(
                                        foodName: "See food",
                                        src: "assets/see_food.png"),
                                    FoodRounded(
                                        foodName: "Fast food",
                                        src: "assets/fast_food.png"),
                                    FoodRounded(
                                        foodName: "Kebab",
                                        src: "assets/kebab.png"),
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    FoodRounded(
                                        foodName: "Salad",
                                        src: "assets/salad.png"),
                                    FoodRounded(
                                        foodName: "Dessert",
                                        src: "assets/dessert.png"),
                                    FoodRounded(
                                        foodName: "Cake",
                                        src: "assets/cake.png"),
                                    FoodRounded(
                                        foodName: "Coffee",
                                        src: "assets/coffee.png"),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.house)),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.heart)),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.cartShopping)),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.bell)),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.user)),
          ],
        ),
      ),
    );
  }
}

//

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4282236, 0);
    path_0.lineTo(size.width * 0.5352792, size.height * 0.04166662);
    path_0.cubicTo(
        size.width * 0.6423354,
        size.height * 0.08333338,
        size.width * 0.8564444,
        size.height * 0.1666662,
        size.width * 0.9456597,
        size.height * 0.2500000);
    path_0.cubicTo(
        size.width * 1.034875,
        size.height * 0.3333337,
        size.width * 0.9991875,
        size.height * 0.4166663,
        size.width * 0.9456597,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.8921319,
        size.height * 0.5833337,
        size.width * 0.8207639,
        size.height * 0.6666663,
        size.width * 0.8029167,
        size.height * 0.7500000);
    path_0.cubicTo(
        size.width * 0.7850764,
        size.height * 0.8333337,
        size.width * 0.8207639,
        size.height * 0.9166663,
        size.width * 0.8386042,
        size.height * 0.9583337);
    path_0.lineTo(size.width * 0.8564444, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.9583337);
    path_0.cubicTo(0, size.height * 0.9166663, 0, size.height * 0.8333337, 0,
        size.height * 0.7500000);
    path_0.cubicTo(0, size.height * 0.6666663, 0, size.height * 0.5833337, 0,
        size.height * 0.5000000);
    path_0.cubicTo(0, size.height * 0.4166663, 0, size.height * 0.3333337, 0,
        size.height * 0.2500000);
    path_0.cubicTo(0, size.height * 0.1666662, 0, size.height * 0.08333338, 0,
        size.height * 0.04166662);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width * 0.4282236, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffFFCECE).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
