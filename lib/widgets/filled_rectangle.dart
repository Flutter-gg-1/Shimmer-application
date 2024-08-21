import 'package:flutter/material.dart';

class FilledRectangle extends StatelessWidget {
  final String title;
  final Color color;
  final String imgPath;

  const FilledRectangle({
    super.key,
    required this.title,
    required this.color,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 138,
          width: 77,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-2, 2),
                blurRadius: 5,
              ),
            ]
          ),
        ),
        Positioned(right: 0, child: Image.asset(imgPath)),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
          child: Text(
            title,
            style: TextStyle(fontSize: 10),
          ),
        )),
      ],
    );
  }
}
