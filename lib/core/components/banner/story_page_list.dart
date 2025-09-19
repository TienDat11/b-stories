import 'package:b_stories/core/components/banner/Widget/Indicator.dart';
import 'package:b_stories/core/components/banner/Widget/banner_image_story.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class StoryPageList extends StatefulWidget {
  const StoryPageList({super.key});

  @override
  State<StoryPageList> createState() => _StoryPageListState();
}

class _StoryPageListState extends State<StoryPageList> {
  final PageController _controller = PageController();
  final List<String> _bannerImages = [
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner1.png',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: AppSizes.height.h360,
          child: PageView.builder(
            controller: _controller,
            itemCount: _bannerImages.length,
            onPageChanged: (index) => setState(() => _currentIndex = index),
            itemBuilder: (context, index) =>
                BannerImageStory(_bannerImages[index]),
          ),
        ),
        SizedBox(height: AppSizes.height.h12),
        Indicator(currentIndex: _currentIndex, itemCount: _bannerImages.length),
      ],
    );
  }
}
