import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
import 'package:flutter/material.dart';

class CategoryAgeCard extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryAgeCard({
    super.key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(colors: AppColors.primaryGradient)
              : null,
          color: isSelected ? null : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [AppShadow.categoryCard],
        ),
        child: CustomText(
          title,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? AppColors.white : AppColors.textNeutral700,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
