import 'package:b_stories/core/components/card/Widget/category_card.dart';
import 'package:flutter/material.dart';

class FilterCategoryDialogGrid extends StatefulWidget {
  final List<String> categories;
  final List<String>? icons;

  const FilterCategoryDialogGrid({
    super.key,
    required this.categories,
    this.icons,
  });

  @override
  State<FilterCategoryDialogGrid> createState() =>
      _FilterCategoryDialogGridState();
}

class _FilterCategoryDialogGridState extends State<FilterCategoryDialogGrid> {
  int selectedIndex = 0; // mặc định chọn item đầu tiên

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double itemWidth = (constraints.maxWidth - 16) / 2; // 2 cột
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(widget.categories.length, (index) {
            final bool isLastFullWidth =
                widget.categories.length.isOdd &&
                index == widget.categories.length - 1;

            return SizedBox(
              width: isLastFullWidth ? constraints.maxWidth : itemWidth,
              child: CategoryCard(
                title: widget.categories[index],
                iconPath: widget.icons![index],
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            );
          }),
        );
      },
    );
  }
}
