import 'dart:math';

import 'package:b_stories/core/components/card/Widget/story_card.dart';
import 'package:b_stories/core/components/section_header/section_header_widget.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/features/home/data/model/story_model.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final String title;
  final String? titleOnTap;
  final List<StoryModel> stories;
  final double aspectRatio;
  final int? maxItems;

  const CustomGridView({
    super.key,
    required this.title,
    required this.stories,
    this.aspectRatio = 173 / 186,
    this.maxItems = 4,
    this.titleOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeaderWidget(
          title: title,
          titleOnTap: titleOnTap,
          onTap: () {
            // TODO: Navigate to CategoryScreen
          },
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: AppSizes.width.w16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: aspectRatio,
          ),
          itemCount: maxItems == null
              ? stories.length
              : min(stories.length, maxItems!),

          itemBuilder: (context, index) {
            final story = stories[index];
            return StoryCard(
              imagePath: story.headerImage ?? '',
              title: story.title ?? '',
              onTap: () {
                // TODO: Navigate to story detail
              },
            );
          },
        ),
      ],
    );
  }
}
