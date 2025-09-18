import 'package:b_stories/core/components/card/custom_grid_view.dart';
import 'package:b_stories/features/home/data/model/category_model.dart';
import 'package:b_stories/features/home/data/model/story_model.dart';
import 'package:flutter/material.dart';

class CustomCategoryGridSection extends StatelessWidget {
  final double aspectRatio;
  final int maxItems;

  const CustomCategoryGridSection({
    super.key,
    this.aspectRatio = 173 / 186,
    this.maxItems = 4,
  });

  // Hàm lấy danh sách category từ stories
  List<CategoryModel> getAllCategories() {
    final allCategories = <CategoryModel>{};

    for (final story in stories) {
      if (story.category != null) {
        allCategories.add(story.category!);
      }
    }

    return allCategories.toList();
  }

  @override
  Widget build(BuildContext context) {
    final categories = getAllCategories();

    return Column(
      children: categories.map((category) {
        // Lấy stories theo category
        final categoryStories = stories
            .where((s) => s.category?.title == category.title)
            .toList();

        return CustomGridView(
          title: category.title ?? '',
          stories: categoryStories,
          aspectRatio: aspectRatio,
          maxItems: maxItems,
        );
      }).toList(),
    );
  }
}
