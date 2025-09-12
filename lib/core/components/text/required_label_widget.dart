// Flutter imports:
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

// Project imports:

class RequiredLabelWidget extends StatelessWidget {
  const RequiredLabelWidget({
    super.key,
    required this.labelText,
    this.isRequired = true,
    this.textStyle,
  });

  final String labelText;
  final bool isRequired;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: labelText,
        style: textStyle ?? AppStyle.body12Regular,
        children: isRequired
            ? [
                TextSpan(
                  text: ' *',
                  style: AppStyle.body12Regular.copyWith(
                    color: AppColors.accentAlert,
                  ),
                ),
              ]
            : null,
      ),
    );
  }
}
