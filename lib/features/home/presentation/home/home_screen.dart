import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/banner/banner_widget.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/core/components/card/custom_category_grid_section.dart';
import 'package:b_stories/core/components/card/Widget/story_card.dart';
import 'package:b_stories/core/components/section_header/section_header_widget.dart';
import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/features/home/data/model/story_model.dart';
import 'package:b_stories/features/home/home_injector.dart';
import 'package:b_stories/features/home/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeBloc, HomeState>(
      bloc: (_) => homeInjector.get<HomeBloc>(),
      loadingSelector: (s) => s.isLoading,
      onCreate: (bloc) {
        if (bloc.state.stories.isEmpty) {
          bloc.add(const HomeEvent.started());
        }
      },
      body: const _Homebody(),
    );
  }
}

class _Homebody extends StatelessWidget {
  const _Homebody();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              BannerWidget(),

              SectionHeaderWidget(title: 'Truyện nổi bật', onTap: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.4, // hoặc 0.3
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    final story = stories[index];
                    return AspectRatio(
                      aspectRatio: 160 / 186, // rộng : cao
                      child: StoryCard(
                        imagePath: story.headerImage ?? '',
                        title: story.title ?? '',
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: AppSizes.height.h16),
              Container(
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
              CustomCategoryGridSection(),
            ],
          ),
        );
      },
    );
  }
}
