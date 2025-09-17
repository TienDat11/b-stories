// Flutter imports:
import 'package:b_stories/core/components/image/custom_icon.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

// Project imports:
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.icon,
    this.iconSize,
    this.textStyle,
    this.isExpanded = true,
    this.gradient,
  });

  /// Factory constructor for small button
  factory CustomButton.small({
    Key? key,
    required String text,
    void Function()? onPressed,
    String? icon,
    double? iconSize,
    Color? backgroundColor,
    Color? foregroundColor,
    bool isExpanded = true,
    double? width,
    double? height,
    Gradient? gradient,
  }) {
    return CustomButton(
      key: key,
      text: text,
      onPressed: onPressed,
      icon: icon,
      iconSize: iconSize ?? AppSizes.square.r20,
      height: height ?? AppSizes.height.h48,
      width: width,
      textStyle: AppStyle.body12Regular,
      borderRadius: BorderRadius.circular(AppSizes.square.r12),
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width.w12,
        vertical: AppSizes.height.h10,
      ),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      isExpanded: isExpanded,
      gradient: gradient,
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
  final double? iconSize;
  final TextStyle? textStyle;
  final bool isExpanded;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? BorderRadius.circular(AppSizes.square.r12);

    return Container(
      width: width ?? (isExpanded ? double.infinity : null),
      height: height ?? AppSizes.height.h56,
      decoration: BoxDecoration(
        gradient: gradient,
        color: gradient == null ? (backgroundColor ?? AppColors.primary) : null,
        borderRadius: effectiveBorderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          textStyle: textStyle ?? AppStyle.vanButoommeDiumSemiBold,
          foregroundColor: foregroundColor ?? AppColors.surfaceWhite,
          backgroundColor: Colors.transparent, // để gradient hiển thị
          shadowColor: Colors.transparent,
          padding:
              padding ??
              EdgeInsets.symmetric(
                horizontal: AppSizes.width.w16,
                vertical: AppSizes.height.h12,
              ),
          shape: RoundedRectangleBorder(borderRadius: effectiveBorderRadius),
        ),
        child: Row(
          mainAxisSize: isExpanded ? MainAxisSize.max : MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              CustomIcon(
                path: icon!,
                size: iconSize ?? AppSizes.square.r24,
                color: foregroundColor ?? AppColors.surfaceWhite,
              ),
              SizedBox(width: AppSizes.width.w8),
            ],
            CustomText(
              text,
              style:
                  textStyle?.copyWith(
                    color: foregroundColor ?? AppColors.surfaceWhite,
                  ) ??
                  AppStyle.body12Regular.copyWith(
                    color: foregroundColor ?? AppColors.surfaceWhite,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
