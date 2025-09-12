// Flutter imports:
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:b_stories/core/extensions/build_context_extension.dart';
import 'package:b_stories/features/main/presentation/widgets/bottom_nav_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Project imports:

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavItem> items;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: AppSizes.height.h90,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isCenterButton = index == 2; // Add button ở giữa

          if (isCenterButton) {
            return _buildCenterButton(item, index);
          }

          return BottomNavItemWidget(
            iconPath: item.iconPath,
            label: item.label,
            isSelected: index == currentIndex,
            onTap: () => onTap(index),
          );
        }),
      ),
    );
  }

  Widget _buildCenterButton(BottomNavItem item, int index) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: SizedBox(
        child: Center(
          child: SvgPicture.asset(
            AppSvgs.layer, // path svg (string)
            width: AppSizes.width.w60,
            height: AppSizes.height.h60,
          ),
        ),
      ),
    );
  }
}
