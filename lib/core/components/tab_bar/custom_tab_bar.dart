import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_shadow.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: AppSizes.height.h16, bottom: AppSizes.height.h12),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.square.r16),
        // border: Border.all(color: Colors.grey.shade300),
        boxShadow: [AppShadow.medium],
      ),
      child: TabBar(
        controller: tabController,
        //indicatorColor: Colors.transparent, // 👈 bỏ underline
        indicatorSize: TabBarIndicatorSize.tab, // 👈 full theo tab
        dividerColor: Colors.transparent, // 👈 bỏ line dưới TabBar
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.square.r16),
          gradient: const LinearGradient(colors: AppColors.primaryGradient),
        ),
        labelColor: Colors.white,

        unselectedLabelColor: Colors.grey,
        tabs: const [
          Tab(text: "Đang đọc"),
          Tab(text: "Đã đọc"),
        ],
      ),
    );
  }
}
