import 'package:b_stories/core/components/card/Widget/display_card.dart';
import 'package:b_stories/core/components/card/Widget/gradient_progress_bar.dart';
import 'package:b_stories/core/components/card/Widget/score_badge.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:flutter/material.dart';

class CustomCardReading extends StatelessWidget {
  const CustomCardReading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.square.r12),
          border: Border.all(color: AppColors.rim, width: 1),
          // boxShadow: [AppShadow.medium],
        ),

        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.width.w16,
          ).copyWith(top: AppSizes.height.h16),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(AppImages.advertisement, fit: BoxFit.cover),
              ),

              SizedBox(height: AppSizes.height.h12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    'Con Quạ thông minh',
                    gradient: LinearGradient(colors: AppColors.primaryGradient),
                  ),
                  ScoreBadge(iconPath: AppSvgs.star, score: '90/100 điểm'),
                ],
              ),

              CustomText(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                'Câu chuyện kể về chú quạ khát nước, đã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trong...',
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
              SizedBox(height: AppSizes.height.h12),
              GradientProgressBar(value: 90 / 100),
              SizedBox(height: AppSizes.height.h12),
            ],
          ),
        ),
      ),
    );
  }
}
