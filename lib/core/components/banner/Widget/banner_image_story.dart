import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class BannerImageStory extends StatelessWidget {
  final String imagePath;
  const BannerImageStory(this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppSizes.height.h16,
        right: AppSizes.width.w16,
        left: AppSizes.width.w16,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
