// Flutter imports:
import 'package:b_stories/core/components/image/custom_icon.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:b_stories/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.title,
    this.subTitle,
    this.loaction,
    this.titleWidget,
    this.showNotification = false,
  });
  final Widget? titleWidget;
  final String? title;
  final String? subTitle;
  final String? loaction;
  final bool showNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.width.w16).copyWith(
        bottom: AppSizes.height.h16,
        top: MediaQuery.of(context).padding.top + AppSizes.height.h22,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.primaryGradient,
          stops: const [0.21, 1],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (titleWidget != null)
            Expanded(child: titleWidget!)
          else
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(title ?? '', style: AppStyle.body12Regular),
                  CustomText(subTitle ?? '', style: AppStyle.body12Regular),
                ],
              ),
            ),
          SizedBox(width: AppSizes.width.w10),
          if (loaction != null)
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.width.w12,
                vertical: AppSizes.height.h8,
              ),
              decoration: BoxDecoration(
                color: AppColors.surfaceWhite,
                borderRadius: BorderRadius.circular(99.r),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: AppSizes.square.r12,
                    color: AppColors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: CustomText(loaction!, style: AppStyle.body12Regular),
            ),
          if (showNotification) ...[
            SizedBox(width: AppSizes.width.w8),
            InkWell(
              onTap: () {
                context.router.push(NotificationRoute());
              },
              child: Container(
                width: AppSizes.square.r34,
                height: AppSizes.square.r34,
                decoration: BoxDecoration(
                  color: AppColors.surfaceGrey,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(AppSizes.square.r5),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomIcon(path: AppSvgs.addstory),
                    Positioned(
                      right: 1.5.r,
                      top: 1.5.r,
                      child: Container(
                        width: AppSizes.square.r9,
                        height: AppSizes.square.r9,
                        decoration: BoxDecoration(
                          color: AppColors.accentAlert,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.primary,
                            width: 1.5.r,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(127.0.h);
}
