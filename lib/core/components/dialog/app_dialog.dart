// Flutter imports:
import 'package:b_stories/core/components/button/custom_outline_button.dart';
import 'package:b_stories/core/components/image/custom_icon.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:

class AppDialog {
  static Future<void> showConfirm(
    BuildContext context, {
    required String title,
    required String message,
    String confirmText = 'Xác nhận',

    VoidCallback? onConfirm,
  }) {
    return show(
      context,
      iconPath: AppSvgs.addstory,
      title: title,
      contentsText: [message],
      // barrierDismissible: barrierDismissible,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomOutlinedButton(
                text: confirmText,
                foregroundColor: AppColors.neutral200,

                onPressed: () {
                  context.router.pop(); // đóng dialog
                  //onCancel?.call();
                },
              ),
            ),
            SizedBox(width: AppSizes.width.w16),
            Expanded(
              child: CustomOutlinedButton(
                text: confirmText,
                foregroundColor: AppColors.accentAlert,
                onPressed: () {
                  context.router.pop(); // đóng dialog
                  onConfirm?.call();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Future<void> showError(
    BuildContext context, {
    required String messageError,
  }) {
    return show(
      context,
      iconPath: AppSvgs.favourite,
      title: 'Lỗi',
      contentWidget: CustomText(
        textAlign: TextAlign.center,
        messageError,
        style: AppStyle.body12Regular,
      ),
      actions: [
        CustomOutlinedButton(
          text: 'OK',
          foregroundColor: AppColors.accentAlert,
          onPressed: () {
            context.router.pop();
          },
        ),
      ],
    );
  }

  static Future<void> show(
    BuildContext context, {
    String? title,
    List<String>? contentsText,
    TextAlign? contentTextAlign,
    String? iconPath,
    Widget? contentWidget,
    List<Widget>? actions,
    bool barrierDismissible = true,
    bool showCloseButton = false,
  }) {
    if (ModalRoute.of(context)?.isCurrent != true) {
      Navigator.of(context).pop();
    }
    return showDialog(
      context: context,
      barrierColor: AppColors.black.withOpacity(0.5),
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
              child: Stack(
                children: [
                  _buildDialogBody(
                    iconPath,
                    title,
                    contentsText,
                    contentTextAlign,
                    contentWidget,
                    actions,
                  ),
                  if (showCloseButton) _buildCloseButton(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget _buildCloseButton(BuildContext context) {
    return Positioned(
      top: AppSizes.square.r16,
      right: AppSizes.square.r16,
      child: InkWell(
        onTap: () => context.router.pop(),
        child: CustomIcon(path: AppSvgs.home, size: AppSizes.square.r24),
      ),
    );
  }

  static Container _buildDialogBody(
    String? iconPath,
    String? title,
    List<String>? contentsText,
    TextAlign? contentTextAlign,
    Widget? contentWidget,
    List<Widget>? actions,
  ) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width.w16,
        vertical: AppSizes.height.h24,
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
          if (iconPath != null) ...[
            CustomIcon(path: iconPath, size: AppSizes.square.r48),
            SizedBox(height: AppSizes.height.h16),
          ],
          if (title != null) ...[
            CustomText(
              title,
              style: AppStyle.bottomNavUnselected,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.height.h8),
          ],
          if (contentsText != null) ...[
            ...contentsText.map(
              (content) => CustomText(
                content,
                style: AppStyle.body12Regular,
                textAlign: contentTextAlign ?? TextAlign.center,
              ),
            ),
            SizedBox(height: AppSizes.height.h16),
          ],
          if (contentWidget != null) contentWidget,
          if (actions != null) ...[
            SizedBox(height: AppSizes.height.h16),
            ...actions,
          ],
        ],
      ),
    );
  }

  static void showErrorDialog(BuildContext context, String string) {}
}
