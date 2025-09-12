import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final String imagePath;
  const BannerImage(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity),
    );
  }
}
