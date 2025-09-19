import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/tab_bar/custom_tab_bar.dart';
import 'package:b_stories/core/components/appbar/custom_appbar.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/features/children/children_injector.dart';
import 'package:b_stories/features/children/presentation/children/bloc/children_bloc.dart';
import 'package:b_stories/features/detail/story_detail/presentation/story_detail/story_detail_screen.dart';
import 'package:b_stories/features/detail/story_list/presentation/story_list/story_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChildrenScreen extends StatefulWidget {
  const ChildrenScreen({super.key});

  @override
  State<ChildrenScreen> createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ChildrenBloc, ChildrenState>(
      bloc: (_) => childrenInjector.get<ChildrenBloc>(),
      loadingSelector: (s) => s.isLoading,
      onCreate: (bloc) => bloc.add(const ChildrenEvent.started()),
      appBar: CustomAppbar(title: 'Truyện của trẻ'),
      body: _ChildrenBody(tabController: _tabController),
    );
  }
}

class _ChildrenBody extends StatelessWidget {
  final TabController tabController;
  const _ChildrenBody({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChildrenBloc, ChildrenState>(
      builder: (context, state) {
        if (state.errorMessage != null) {
          return Center(child: Text('Lỗi: ${state.errorMessage}'));
        }
        return Column(
          children: [
            CustomTabBar(tabController: tabController),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  //ReadScreen(),
                  StoryDetailScreen(),
                  StoryListScreen(),

                  //ReadingScreen()
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
