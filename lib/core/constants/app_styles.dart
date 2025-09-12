// Flutter imports:
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppStyle {
  AppStyle._();

  static TextStyle heading15SemiBold = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp12,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.primary,
  );

  static TextStyle boldSubtitle1 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: AppSizes.font.sp16,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textNeutral700,
  );

  // Style cơ bản cho heading10Medium (không có gradient)
  // static TextStyle heading10MediumBase = TextStyle(
  //   fontWeight: FontWeight.w500,
  //   fontSize: 10.0, // Thay bằng AppSizes.font.sp10 nếu có
  //   height: 1.5,
  //   letterSpacing: 0,
  // );

  // Phương thức static tạo text với gradient
  // static Widget heading10MediumGradient(String text, {TextAlign? textAlign}) {
  //   return ShaderMask(
  //     blendMode: BlendMode.srcIn, // Đảm bảo gradient áp lên text
  //     shaderCallback: (Rect bounds) {
  //       return LinearGradient(
  //         colors: AppColors.primaryGradient, // Sử dụng gradient từ AppColors
  //         begin: Alignment.topLeft,
  //         end: Alignment.bottomRight,
  //       ).createShader(bounds);
  //     },
  //     child: Text(
  //       text,
  //       textAlign: textAlign,
  //       style: heading10MediumBase.copyWith(
  //         color:
  //             Colors.white, // ShaderMask cần color trắng để gradient hiển thị
  //       ),
  //     ),
  //   );
  // }

  /////

  ///////

  // Navigation bar labels (unselected - grey, regular)
  static TextStyle bottomNavUnselected = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp12,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  // Navigation bar labels (selected - orange, semi-bold)
  static TextStyle body12Regular = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: AppSizes.font.sp12,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.accentAlert, // Assuming orange is accentAlert
  );

  // Page titles on orange background (e.g., "HOME", "TÌM KIẾM") - large, bold, white
  static TextStyle pageTitleBoldWhite = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: AppSizes.font.sp24,
    height: 1.2,
    letterSpacing: 0.5,
    color: AppColors.surfaceWhite,
  );

  // Category titles (e.g., "Cổ tích", "Ngụ ngôn") - semi-bold, primary, orange accent
  static TextStyle categoryTitleSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: AppSizes.font.sp18,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.accentAlert,
  );

  // Story titles (e.g., "Rùa con tập bay", "Cáo nhỏ tinh nghịch") - semi-bold, primary
  static TextStyle storyTitleSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: AppSizes.font.sp16,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  // Story descriptions (longer texts) - regular, primary
  static TextStyle storyDescriptionRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp15,
    height: 1.5,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    color: AppColors.textPrimary,
  );

  // Button texts (e.g., "Xem tất cả", "Đọc ngay!") - medium, white on orange
  static TextStyle buttonTextMediumWhite = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: AppSizes.font.sp16,
    height: 1.3,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
    color: AppColors.surfaceWhite,
  );

  // Search placeholder/input (e.g., "Tìm kiếm truyện") - regular, secondary
  static TextStyle searchPlaceholderRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp14,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  // Quiz questions (e.g., "Trong truyện, có bao nhiêu nhân vật?") - regular, primary
  static TextStyle quizQuestionRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp16,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  // Quiz options/numbers (e.g., "3", "1") - semi-bold, primary
  static TextStyle quizOptionSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: AppSizes.font.sp15,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  // Filter labels (e.g., "3 - 5 tuổi", "Truyện ngắn") - regular, primary
  static TextStyle filterLabelRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp14,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  // Notification titles (e.g., "Thông báo về truyện mới") - semi-bold, primary
  static TextStyle notificationTitleSemiBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: AppSizes.font.sp15,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  // Notification subtitles (e.g., "“Có truyện mới rồi! Cùng khám phá ngay") - regular, secondary
  static TextStyle notificationSubtitleRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp14,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  // Splash percentage (e.g., "80%") - bold, primary
  static TextStyle splashPercentageBold = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: AppSizes.font.sp20,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );

  // Time display (e.g., "9:41") - regular, secondary
  static TextStyle timeDisplayRegular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: AppSizes.font.sp12,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textSecondary,
  );

  // Existing styles from example (retained for completeness)
  static TextStyle k24BoldTextPrimary = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: AppSizes.font.sp24,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.textPrimary,
  );
}
