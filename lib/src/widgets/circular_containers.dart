import 'package:flutter/material.dart';

class CircularContainers extends StatefulWidget {
  const CircularContainers({super.key});

  @override
  State<CircularContainers> createState() => _CircularContainersState();
}

class _CircularContainersState extends State<CircularContainers> {
  late bool isloading;
  @override
  void initState() {
    isloading = true;
    Future.delayed(const Duration(seconds: 5), (){
      isloading = false;
      setState(() {
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xffffffff), Color(0xff999999)], begin: Alignment.topLeft),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 10,
                            )
                          ]
                        ),
                      );
  }
}