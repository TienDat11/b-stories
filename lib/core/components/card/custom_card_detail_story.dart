import 'package:b_stories/core/components/banner/banner_widget.dart';
import 'package:b_stories/core/components/button/custom_button.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomCardDetailStody extends StatelessWidget {
  const CustomCardDetailStody({super.key});

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
          padding: EdgeInsets.all(AppSizes.square.r16),
          child: Column(
            children: [
              BannerWidget(),
              SizedBox(height: AppSizes.height.h12),
              CustomText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                'Con Quạ thông minh',
                gradient: LinearGradient(colors: AppColors.primaryGradient),
              ),

              CustomText(
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                'Câu chuyện kể về chú quạ khát nước, đã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trongđã khéo léo dùng những viên sỏi nhỏ để làm đầy nước trong...',
              ),
              SizedBox(height: AppSizes.height.h12),
              CustomButton(
                onPressed: () {},
                text: 'Xác nhận',
                gradient: LinearGradient(
                  colors: AppColors.primaryGradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
