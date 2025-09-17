import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String? iconPath; // đường dẫn asset
  final bool isSelected;
  final VoidCallback? onTap;

  const CategoryCard({
    super.key,
    required this.title,
    this.iconPath,
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
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(colors: AppColors.primaryGradient)
              : null,
          color: isSelected ? null : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [AppShadow.categoryCard],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Nếu icon là SVG
            SvgPicture.asset(
              iconPath ?? '',
              width: 20,
              height: 20,
              // color: isSelected ? Colors.white : Colors.orange[700],
            ),
            // Nếu icon là PNG, dùng Image.asset thay thế:
            // Image.asset(iconPath, width: 20, height: 20, color: isSelected ? Colors.white : Colors.orange[700]),
            SizedBox(width: 8),
            CustomText(
              title,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? AppColors.white : AppColors.textNeutral700,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
