// Flutter imports:
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:

//Dùng trong các màn hình con
class CustomSmallAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomSmallAppbar({
    super.key,
    required this.title,
    this.style,
    this.rightTitle,
  });
  final String title;
  final TextStyle? style;
  final Widget? rightTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width.w16,
      ).copyWith(top: MediaQuery.of(context).padding.top + AppSizes.height.h22),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              AppSvgs.arrowleft,
              width: AppSizes.square.r24,
              height: AppSizes.square.r24,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(title, style: style ?? AppStyle.boldSubtitle1),
              if (rightTitle != null) ...[
                SizedBox(width: AppSizes.width.w8),
                rightTitle!,
              ],
            ],
          ),
          SizedBox(width: AppSizes.width.w24),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppSizes.height.h96);
}
