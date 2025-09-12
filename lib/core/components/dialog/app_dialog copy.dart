import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/button/custom_button.dart';
import 'package:b_stories/core/components/dialog/filter_dialog.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:b_stories/core/constants/gradient_text.dart';
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
                            GradientText(
                              'Bộ lọc',
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
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Danh mục",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: AppSizes.height.h8),
                                  CategoryGrid(
                                    icons: [
                                      AppSvgs.funny,
                                      AppSvgs.cotich,
                                      AppSvgs.khoahoc,
                                      AppSvgs.sum,
                                      AppSvgs.truyenthuyet,
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
                                boxShadow: [AppShadow.medium],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Độ tuổi",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(height: AppSizes.height.h8),
                                  CategoryGrid(
                                    icons: ["", "", "", ""],
                                    categories: [
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
                            GradientText(
                              'Hãy chọn đề đọc',
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
                                  Text('Tự động đọc (Auto)'),
                                  Text(
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
                                  Text('Tự đọc (Thủ công)'),
                                  Text(
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
                              SvgPicture.asset(AppSvgs.summary),
                              SizedBox(height: AppSizes.height.h16),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Xin chúc mừng!",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppSvgs.left),
                                  SizedBox(width: AppSizes.width.w8),
                                  Text(
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
                                        Text('Tự đọc (Thủ công)'),
                                        Text(
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
