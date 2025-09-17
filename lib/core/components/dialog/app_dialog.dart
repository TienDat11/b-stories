import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/button/custom_button.dart';
import 'package:b_stories/core/components/dialog/filter_age_dialog.dart';
import 'package:b_stories/core/components/dialog/filter_category_dialog.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppDialog {
  static Future<void> showFilter(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.width.w16,
                      vertical: AppSizes.height.h16,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceWhite,
                      borderRadius: BorderRadius.circular(AppSizes.square.r16),
                      boxShadow: [AppShadow.medium],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              'Bộc lọc',
                              gradient: LinearGradient(
                                colors: AppColors.primaryGradient,
                              ),
                            ),

                            Spacer(),
                            InkWell(
                              onTap: context.pop,
                              child: SizedBox(
                                width: 28,
                                height: 28,
                                child: SvgPicture.asset(AppSvgs.cancel),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.height.h16),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.width.w16,
                                vertical: AppSizes.height.h24,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.surfaceWhite,
                                borderRadius: BorderRadius.circular(
                                  AppSizes.square.r16,
                                ),
                                boxShadow: [AppShadow.categoryCard],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: CustomText(
                                      "Danh mục",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: AppSizes.height.h8),
                                  FilterCategoryDialogGrid(
                                    icons: [
                                      AppSvgs.funny,
                                      AppSvgs.legend,
                                      AppSvgs.science,
                                      AppSvgs.sum,
                                      AppSvgs.fairyTale,
                                    ],
                                    categories: [
                                      "Cổ tích",
                                      "Ngụ ngôn",
                                      "Khoa học",
                                      "Truyện cười",
                                      "Truyền thuyết",
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.height.h16),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.width.w16,
                                vertical: AppSizes.height.h24,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.surfaceWhite,
                                borderRadius: BorderRadius.circular(
                                  AppSizes.square.r16,
                                ),
                                boxShadow: [AppShadow.categoryCard],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: CustomText(
                                      "Độ tuổi",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: AppSizes.height.h8),
                                  FilterAgeDialogGrid(
                                    age: [
                                      "3 - 5 tuôi",
                                      "6 - 7 tuôi",
                                      "9 - 12 tuôi",
                                      "Trên 12 tuổi",
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.height.h16),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<void> showReading(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizes.width.w16,
                      vertical: AppSizes.height.h16,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceWhite,
                      borderRadius: BorderRadius.circular(AppSizes.square.r16),
                      boxShadow: [AppShadow.medium],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              'Hãy chọn đề đọc',
                              gradient: LinearGradient(
                                colors: AppColors.primaryGradient,
                              ),
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: context.pop,
                              child: SizedBox(
                                width: 28,
                                height: 28,
                                child: SvgPicture.asset(AppSvgs.cancel),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.height.h16),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.width.w16,
                                vertical: AppSizes.height.h24,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.surfaceWhite,
                                borderRadius: BorderRadius.circular(
                                  AppSizes.square.r16,
                                ),
                                boxShadow: [AppShadow.medium],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppSvgs.auto),
                                  CustomText('Tự động đọc (Auto)'),
                                  CustomText(
                                    'Truyện sẽ tự lật trang và đọc cho bé nghe',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.height.h16),
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSizes.width.w16,
                                vertical: AppSizes.height.h24,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.surfaceWhite,
                                borderRadius: BorderRadius.circular(
                                  AppSizes.square.r16,
                                ),
                                boxShadow: [AppShadow.medium],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppSvgs.handmade),
                                  CustomText('Tự đọc (Thủ công)'),
                                  CustomText(
                                    'Bé tự lật trang và đọc theo tốc độ của mình',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.height.h16),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<void> showSummary(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric().copyWith(
                      bottom: AppSizes.height.h24,
                      top: AppSizes.height.h16,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceWhite,
                      borderRadius: BorderRadius.circular(AppSizes.square.r16),
                      boxShadow: [AppShadow.medium],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 16.0,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: context.pop,
                                child: SizedBox(
                                  width: 28,
                                  height: 28,
                                  child: SvgPicture.asset(AppSvgs.cancel),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSizes.width.w16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(AppImages.summary),
                              //SvgPicture.asset(AppSvgs.summary),
                              SizedBox(height: AppSizes.height.h16),
                              Align(
                                alignment: Alignment.center,
                                child: CustomText(
                                  "Xin chúc mừng!",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppSvgs.left),
                                  SizedBox(width: AppSizes.width.w8),
                                  CustomText(
                                    'Thật tuyệt vời! Ong con chăm ngoan quá',
                                  ),
                                  SizedBox(width: AppSizes.width.w8),
                                  SvgPicture.asset(AppSvgs.right),
                                ],
                              ),
                              SizedBox(height: AppSizes.height.h16),
                              Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: AppSizes.width.w16,
                                      vertical: AppSizes.height.h24,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.yellow100,
                                      borderRadius: BorderRadius.circular(
                                        AppSizes.square.r16,
                                      ),
                                      boxShadow: [AppShadow.yellow400],
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(AppSvgs.handmade),
                                        CustomText('Tự đọc (Thủ công)'),
                                        CustomText(
                                          'Bé tự lật trang và đọc theo tốc độ của mình',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppSizes.height.h16),
                              CustomButton(
                                onPressed: () {},
                                text: 'Xem lại kết quả',
                                gradient: LinearGradient(
                                  colors: AppColors.primaryGradient,
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
