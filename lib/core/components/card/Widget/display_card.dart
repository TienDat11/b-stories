import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DisplayCard extends StatelessWidget {
  final String title;
  final String iconPath;

  const DisplayCard({super.key, required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [AppShadow.medium],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [AppShadow.medium],
            ),
            child: SvgPicture.asset(iconPath, width: 24, height: 24),
          ),
          const SizedBox(width: 8),
          CustomText(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
