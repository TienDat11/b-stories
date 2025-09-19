import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/appbar/custom_appbar.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/core/components/card/custom_bookInfo_card.dart';
import 'package:b_stories/core/components/card/custom_card_detail_story.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/features/detail/story_detail/presentation/story_detail/bloc/story_detail_bloc.dart';
import 'package:b_stories/features/detail/story_detail/story_detail_injector.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StoryDetailScreen extends StatefulWidget {
  const StoryDetailScreen({super.key});

  @override
  State<StoryDetailScreen> createState() => _StoryDetailScreenState();
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<StoryDetailBloc, StoryDetailState>(
      bloc: (_) => storyDetailInjector.get<StoryDetailBloc>(),
      loadingSelector: (s) => s.isLoading,
      appBar: CustomAppbar(title: 'Truyện cổ tích 1'),
      body: _StoryDetailScreen(),
    );
  }
}

class _StoryDetailScreen extends StatelessWidget {
  const _StoryDetailScreen();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: AppSizes.height.h16),
        CustomCardDetailStody(),
        SizedBox(height: AppSizes.height.h16),
        CustomBbookInfoCard(),
      ],
    );
  }
}
