import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScoreBadge extends StatelessWidget {
  final String score; // ví dụ: "90/100 điểm"
  final String iconPath; // đường dẫn asset/icon
  final Color textColor;
  final Color backgroundColor;

  const ScoreBadge({
    super.key,
    required this.score,
    required this.iconPath,
    this.textColor = const Color(0xFFFF9800), // cam
    this.backgroundColor = const Color(0xFFFFF3E0), // cam nhạt
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50), // pill shape
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(iconPath, width: 20, height: 20),
          const SizedBox(width: 6),
          Text(
            score,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
