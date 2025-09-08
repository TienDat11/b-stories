import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color primaryLight = Color(0xFFE6F9FA);
  static const Color surfaceWhite = Color(0xFFFBFCFF);
  static const Color surfaceGrey = Color(0xFFF5F7FA);
  static const Color textPrimary = Color(0xFF141414);
  static const Color textPrimaryPhone = Color(0xFF141414);
  static const Color textSecondary = Color(0xFF636366);
  static const Color textPrimary2 = Color(0xFF3A3A3C);
  static const Color textBlack = Color(0xFF28282A);

  // Neutral
  static const Color neutral100 = Color(0xFFF0F0F0);
  static const Color neutral200 = Color(0xFFDDDDE5);
  static const Color neutral400 = Color(0xFF949499);
  static const Color neutral900 = Color(0xFF141414);

  // Accent
  static const Color accentAlert = Color(0xFFFF1818);

  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  // Gradient (không thể là const vì List const Color chưa được Flutter hỗ trợ trực tiếp)
  static const List<Color> primaryGradient = [
    Color(0xFFFFA800),
    Color(0xFFFF6B00),
  ];
}
