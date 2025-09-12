import 'package:b_stories/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;
  const Indicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 16 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: isActive ? Colors.orange : AppColors.orange100,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }),
    );
  }
}
