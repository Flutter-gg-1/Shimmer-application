import 'package:app14/model/food_category.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../app_state.dart';

class CircleGrid extends StatelessWidget {
  CircleGrid({super.key});
  final AppState appState = AppState();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              // Padding around the GridView
              children: FoodCategory.all
                  .map((cat) => appState.isLoading
                      ? const _ShimmerView()
                      : _GridItem(title: cat.title, img: cat.img))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _ShimmerView extends StatelessWidget {
  const _ShimmerView();

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: const LinearGradient(
        colors: [Colors.white, Colors.grey],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const AspectRatio(
              aspectRatio: 1.2,
              child: Text(''),
            ),
          )
        ],
      ),
    );
  }
}

class _GridItem extends StatelessWidget {
  const _GridItem({
    required this.title,
    required this.img,
  });

  final String title;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: img,
        ),
        Text(title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
      ],
    );
  }
}
