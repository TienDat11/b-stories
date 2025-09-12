// Flutter imports:
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor,
    this.foregroundColor,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.icon,
    this.borderColor,
    this.textStyle,
    this.mainAxisAlignment,
    this.iconSize,
  });
  factory CustomOutlinedButton.small({
    Key? key,
    required String text,
    void Function()? onPressed,
    String? icon,
    MainAxisAlignment? mainAxisAlignment,
    double? iconSize,
  }) {
    return CustomOutlinedButton(
      key: key,
      text: text,
      onPressed: onPressed,
      icon: icon,
      height: AppSizes.height.h48,
      textStyle: AppStyle.body12Regular,
      borderRadius: BorderRadius.circular(AppSizes.square.r12),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width.w12,
        vertical: AppSizes.height.h10,
      ),
      mainAxisAlignment: mainAxisAlignment,
      iconSize: iconSize ?? AppSizes.square.r20,
    );
  }

  final void Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final String? icon;
  final Color? borderColor;
  final TextStyle? textStyle;
  final MainAxisAlignment? mainAxisAlignment;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = OutlinedButton.styleFrom(
      textStyle: textStyle ?? AppStyle.boldSubtitle1,
      backgroundColor: backgroundColor ?? AppColors.surfaceWhite,
      foregroundColor: foregroundColor ?? AppColors.textPrimary,
      minimumSize: Size(
        width ?? double.infinity,
        height ?? AppSizes.height.h56,
      ),
      padding:
          padding ??
          EdgeInsets.symmetric(
            horizontal: AppSizes.width.w16,
            vertical: AppSizes.height.h12,
          ),
      shape: RoundedRectangleBorder(
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppSizes.square.r12),
      ),
      side: BorderSide(
        color: borderColor ?? AppColors.neutral200,
        width: AppSizes.square.r1,
      ),
    );

    final child = Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          SvgPicture.asset(
            icon!,
            width: iconSize ?? AppSizes.square.r24,
            height: iconSize ?? AppSizes.square.r24,
            colorFilter: ColorFilter.mode(
              foregroundColor ?? AppColors.textPrimary,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(width: AppSizes.width.w12),
        ],
        CustomText(text),
      ],
    );

    return OutlinedButton(onPressed: onPressed, style: style, child: child);
  }
}
