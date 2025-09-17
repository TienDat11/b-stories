import 'package:b_stories/core/components/card/Widget/category_age_card.dart';
import 'package:flutter/material.dart';

class FilterAgeDialogGrid extends StatefulWidget {
  final List<String> age;

  const FilterAgeDialogGrid({super.key, required this.age});

  @override
  State<FilterAgeDialogGrid> createState() => _FilterAgeDialogGridState();
}

class _FilterAgeDialogGridState extends State<FilterAgeDialogGrid> {
  int selectedIndex = 0; // mặc định chọn item đầu tiên

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double itemWidth = (constraints.maxWidth - 16) / 2; // 2 cột
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(widget.age.length, (index) {
            final bool isLastFullWidth =
                widget.age.length.isOdd && index == widget.age.length - 1;

            return SizedBox(
              width: isLastFullWidth ? constraints.maxWidth : itemWidth,
              child: CategoryAgeCard(
                title: widget.age[index],
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
