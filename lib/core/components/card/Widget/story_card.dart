import 'package:auto_size_text/auto_size_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  final String title;
  final String imagePath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          height: AppSizes.height.h186,
          width: AppSizes.width.w173,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.linearGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              // background image + border
              Positioned.fill(
                top: 4,
                bottom: 4,
                left: 4,
                right: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: LinearGradient(
                      colors: AppColors.carGradient,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.width.w2)
                        .copyWith(
                          top: AppSizes.height.h24,
                          bottom: AppSizes.height.h2,
                        ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: AppColors.card, width: 1.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(imagePath, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ),

              // title (fixed)
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.infinity, // chiếm hết ngang card
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ).copyWith(top: 8, bottom: 6),
                  child: AutoSizeText(
                    title,
                    style: AppStyle.capBold12,
                    maxLines: 1,
                    minFontSize: 10,
                    maxFontSize: 18,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
