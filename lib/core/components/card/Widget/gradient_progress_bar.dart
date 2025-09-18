import 'package:flutter/material.dart';

class GradientProgressBar extends StatelessWidget {
  final double value; // 0.0 -> 1.0
  final double height;
  final BorderRadiusGeometry borderRadius;

  const GradientProgressBar({
    super.key,
    required this.value,
    this.height = 12,
    this.borderRadius = const BorderRadius.all(Radius.circular(50)),
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey.shade200, // màu nền xám nhạt
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth * value;
            return Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFFC107),
                      Color(0xFFFF5722),
                    ], // vàng -> cam
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
