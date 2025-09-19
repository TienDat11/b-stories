import 'package:b_stories/core/components/card/Widget/display_card.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:flutter/material.dart';

class CustomBbookInfoCard extends StatelessWidget {
  const CustomBbookInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.square.r12),
          border: Border.all(color: AppColors.rim, width: 1),
        ),

        child: Padding(
          padding: EdgeInsets.all(AppSizes.square.r16),
          child: Column(
            children: [
              CustomText('Giới thiệu về sách'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText('Tác giả'),
                  CustomText('Giới thiệu về sách'),
                ],
              ),
              SizedBox(height: AppSizes.height.h12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText('Nhà xuất bản'),
                  CustomText('Giới thiệu về sách'),
                ],
              ),
              SizedBox(height: AppSizes.height.h12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText('Số trang'),
                  CustomText('Giới thiệu về sách'),
                ],
              ),
              SizedBox(height: AppSizes.height.h12),
              Row(
                children: [
                  Expanded(
                    child: DisplayCard(
                      title: '5 - 8 tuổi',
                      iconPath: AppSvgs.fairyTale,
                    ),
                  ),
                  SizedBox(width: AppSizes.width.w16),
                  Expanded(
                    child: DisplayCard(
                      title: 'Ngụ ngôn',
                      iconPath: AppSvgs.mynauiBook,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
