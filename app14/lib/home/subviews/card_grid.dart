import 'package:app14/model/food_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../app_state.dart';

class CardGrid extends StatelessWidget {
  CardGrid({super.key});
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
                crossAxisCount: 3,
                crossAxisSpacing: 16.0,
                childAspectRatio: 0.6,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              // Padding around the GridView
              children: FoodItem.all
                  .map(
                    (item) => appState.isLoading
                        ? const _ShimmerView()
                        : _GridItem(title: item.title, img: item.img),
                  )
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
      child: AspectRatio(
        aspectRatio: 0.6,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text(''),
        ),
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
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 0.6,
          child: img,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(title),
        ),
      ],
    );
  }
}
