import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/appbar/custom_appbar.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/core/components/card/custom_grid_view.dart';
import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/features/detail/story_list/presentation/story_list/bloc/story_list_bloc.dart';
import 'package:b_stories/features/detail/story_list/story_list_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class StoryListScreen extends StatefulWidget {
  const StoryListScreen({super.key});

  @override
  State<StoryListScreen> createState() => _StoryListScreenState();
}

class _StoryListScreenState extends State<StoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<StoryListBloc, StoryListState>(
      bloc: (_) => storyListInjector.get<StoryListBloc>(),
      loadingSelector: (s) => s.isLoading,
      appBar: CustomAppbar(title: 'Truyện cổ tích'),
      body: _StoryListScreen(),
    );
  }
}

class _StoryListScreen extends StatelessWidget {
  const _StoryListScreen();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryListBloc, StoryListState>(
      builder: (context, state) {
        return ListView(
          children: [
            SizedBox(height: AppSizes.height.h16),
            CustomGridView(title: '', stories: []),
            SizedBox(height: AppSizes.height.h16),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.width.w16,
              ).copyWith(top: AppSizes.height.h16, bottom: AppSizes.height.h24),
              child: Container(
                height: AppSizes.height.h140,
                width: AppSizes.width.w358,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.square.r16),
                  image: const DecorationImage(
                    image: AssetImage(AppImages.advertisement),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
