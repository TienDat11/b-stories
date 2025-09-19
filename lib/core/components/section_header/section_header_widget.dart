import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String title;
  final String? titleOnTap;
  final VoidCallback onTap;

  const SectionHeaderWidget({
    required this.title,
    required this.onTap,
    super.key,
    this.titleOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width.w16,
      ).copyWith(top: AppSizes.height.h16, bottom: AppSizes.height.h12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: CustomText(
              titleOnTap ?? '',
              gradient: LinearGradient(colors: AppColors.primaryGradient),
              // style: TextStyle(
              //   fontSize: 14,
              //   color: Colors.orange[700],
              //   fontWeight: FontWeight.w600,
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
