import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer_animation/shimmer_animation.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int currentPageIndex = 0;
    late bool isLoading=true;
  
  @override
  void initState() {
    
    Future.delayed(const Duration(seconds: 3), () {
      isLoading = false;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  extendBodyBehindAppBar: true,
  drawer: const Drawer(),
  appBar: AppBar(
    backgroundColor: const Color.fromARGB(0, 0, 0, 0),
    elevation: 0,
    title: SvgPicture.asset('./assets/logo/logo.svg'),
      ),
      bottomNavigationBar: NavigationBar(onDestinationSelected: (int index){
        setState(() {
                currentPageIndex = index;
              });
      },
        selectedIndex: currentPageIndex,
        indicatorColor: const Color.fromARGB(0, 255, 193, 7),
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: SvgPicture.asset('./assets/icons/home.svg'),
            icon: SvgPicture.asset('./assets/icons/home.svg'),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('./assets/icons/like.svg'),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('./assets/icons/cart.svg'),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('./assets/icons/notification.svg'),
            label: '',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('./assets/icons/profilecircle.svg'),
            label: '',
          ),
          
        ],),
  body: Stack(
    children: [
      //bg paint
      CustomPaint(
        size: const Size(144, 800),
        painter: RPSCustomPainter(),
      ),
      //page elements
      Padding(
        padding: const EdgeInsets.fromLTRB(50, 150, 50, 40),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Delicious Food? \nGo Ahead...', style: TextStyle(fontSize: 15))),
            const SizedBox(height: 50,),
            isLoading ?
            const Row(
              children: [
                ContainerDesign(),
                Spacer(),
                ContainerDesign(),
                Spacer(),
                ContainerDesign(),
              ],
            )
            :
             const Row(
              children: [
                LoadedContainer(img: './assets/images/burger.png', title: "Burger",),
                Spacer(),
                LoadedContainer(img: './assets/images/pizza.png', title: "Pizza",),
                Spacer(),
                LoadedContainer(img: './assets/images/pasta.png', title: "Pasta",),
              ],
            ),
            const SizedBox(height: 30,),
            const Text('  See more...', style: TextStyle(color: Color.fromARGB(255, 50, 118, 255), fontSize: 10),),
            const Text('______________', style: TextStyle(color: Color.fromARGB(255, 50, 118, 255), fontSize: 10),),
            const SizedBox(height: 15,),
            isLoading ?
             const Row(
              children: [
                CircleContainerDesign(),
                Spacer(),
                CircleContainerDesign(),
                Spacer(),
                CircleContainerDesign(),
                Spacer(),
                CircleContainerDesign(),
              ],
            )
            :
            const Row(
              children: [
                LoadedCircleContainer(img: './assets/images/vegan.png', title: "Vegan",),
                Spacer(),
                LoadedCircleContainer(img: './assets/images/sea.png', title: "Sea food",),
                Spacer(),
                LoadedCircleContainer(img: './assets/images/fast.png', title: "Fast food",),
                Spacer(),
                LoadedCircleContainer(img: './assets/images/kebab.png', title: "Kebab",),
              ],
            ),
            const SizedBox(height: 10,),
            isLoading ?
             const Row(
              children: [
                CircleContainerDesign(),
                Spacer(),
                CircleContainerDesign(),
                Spacer(),
                CircleContainerDesign(),
                Spacer(),
                CircleContainerDesign(),
              ],
            )
            :
            const Row(
              children: [
                LoadedCircleContainer(img: './assets/images/salad.png', title: "Salad",),
                Spacer(),
                LoadedCircleContainer(img: './assets/images/dessert.png', title: "Dessert",),
                Spacer(),
                LoadedCircleContainer(img: './assets/images/cake.png', title: "Cake",),
                Spacer(),
                LoadedCircleContainer(img: './assets/images/coffee.png', title: "Coffee",),
              ],
            )
          ],
        ),
      )
    ],
  )
);

  }
}



class ContainerDesign extends StatelessWidget{
  const ContainerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child:
          Container(
            width: 77.0,
            height: 138.0,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 232, 232, 232), Color.fromARGB(255, 130, 130, 130)],
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
             boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
    );
  }
}

class CircleContainerDesign extends StatelessWidget{
  const CircleContainerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: Column (
        children: [ 
         Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color.fromARGB(255, 232, 232, 232), Color.fromARGB(255, 130, 130, 130)],
            ),
            boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
                ),
              ),
            const Text('', style: TextStyle(fontSize: 10),),
      
          ]
        ),
    );
  }
}

class LoadedContainer extends StatelessWidget{

  final String img;
  final String title;
  const LoadedContainer({super.key, required this.img, required this.title});


  @override
  Widget build(BuildContext context) {
    return Stack (
        children: [ 
          Container(
            width: 77.0,
            height: 138.0,
            decoration: BoxDecoration(
            
            borderRadius: const BorderRadius.all(Radius.circular(15)),
             boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), 
                ),
              ],
              image:  DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
            ),
          ),
           Padding(
            padding:const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Text(title, style: const TextStyle(fontSize: 10),),
            )
          ]
        
    );
  }
}

class LoadedCircleContainer extends StatelessWidget{

  final String img;
  final String title;
  const LoadedCircleContainer({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column (
        children: [ 
         Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              
            boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              image:  DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
                ),
              ),
             Text(title, style: const TextStyle(fontSize: 10),),
      
          ]
    );
  }
}

class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(61.6642,0);
    path_0.lineTo(77.0802,33.3333);
    path_0.cubicTo(92.4963,66.6667,123.328,133.333,136.175,200);
    path_0.cubicTo(149.022,266.667,143.883,333.333,136.175,400);
    path_0.cubicTo(128.467,466.667,118.19,533.333,115.62,600);
    path_0.cubicTo(113.051,666.667,118.19,733.333,120.759,766.667);
    path_0.lineTo(123.328,800);
    path_0.lineTo(0,800);
    path_0.lineTo(0,766.667);
    path_0.cubicTo(0,733.333,0,666.667,0,600);
    path_0.cubicTo(0,533.333,0,466.667,0,400);
    path_0.cubicTo(0,333.333,0,266.667,0,200);
    path_0.cubicTo(0,133.333,0,66.6667,0,33.3333);
    path_0.lineTo(0,0);
    path_0.lineTo(61.6642,0);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = const Color(0xffFFCECE).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}