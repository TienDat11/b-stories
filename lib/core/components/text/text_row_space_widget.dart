// Flutter imports:
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:b_stories/core/constants/constants.dart';
import 'package:flutter/material.dart';

// Project imports:

class TextRowSpaceWidget extends StatelessWidget {
  const TextRowSpaceWidget({
    super.key,
    this.leftText,
    this.rightText,
    this.leftWidget,
    this.rightWidget,
    this.leftTextStyle,
    this.rightTextStyle,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });
  final String? leftText;
  final String? rightText;
  final TextStyle? leftTextStyle;
  final TextStyle? rightTextStyle;
  final Widget? leftWidget;
  final Widget? rightWidget;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        Expanded(
          child:
              leftWidget ??
              CustomText(
                leftText ?? Constants.kEmpty,
                style: leftTextStyle ?? AppStyle.body12Regular,
              ),
        ),
        SizedBox(width: AppSizes.width.w6),
        rightWidget ??
            CustomText(
              rightText ?? Constants.kEmpty,
              style: rightTextStyle ?? AppStyle.body12Regular,
            ),
      ],
    );
  }
}
