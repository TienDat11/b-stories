// Flutter imports:
import 'package:b_stories/core/components/image/custom_icon.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
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
    this.titleWidget,
    this.showNotification = false,
  });
  final Widget? titleWidget;
  final String? title;
  final bool showNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.width.w16).copyWith(
        bottom: AppSizes.height.h16,
        top: MediaQuery.of(context).padding.top + AppSizes.height.h22,
      ),
      decoration: BoxDecoration(
        color: AppColors.whiteNeuTral50,
        boxShadow: [AppShadow.medium],
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(title ?? '', style: AppStyle.headlinesH6),
                ],
              ),
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
                  children: [CustomIcon(path: AppSvgs.addstory)],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0.h);
}
