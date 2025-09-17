// Flutter imports:
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppShadow {
  AppShadow._();
  static BoxShadow medium = BoxShadow(
    color: AppColors.black.withOpacity(0.1),
    blurRadius: 16,
    offset: const Offset(0, 0),
  );
  static BoxShadow categoryCard = BoxShadow(
    color: AppColors.black.withOpacity(0.1),
    blurRadius: 4,
    offset: const Offset(0, 0),
  );
  static BoxShadow light = BoxShadow(
    color: AppColors.black.withOpacity(0.05),
    blurRadius: 12,
    offset: const Offset(0, 0),
  );
  static BoxShadow yellow400 = BoxShadow(
    color: AppColors.yellow400,
    blurRadius: 12,
    offset: const Offset(0, 0),
  );
}
