import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/appbar/custom_appbar.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/core/components/card/custom_card_reading.dart';
import 'package:b_stories/features/new_story/new_story_injector.dart';
import 'package:b_stories/features/new_story/presentation/new_story/bloc/new_story_bloc.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewStoryScreen extends StatefulWidget {
  const NewStoryScreen({super.key});

  @override
  State<NewStoryScreen> createState() => _NewStoryScreenState();
}

class _NewStoryScreenState extends State<NewStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<NewStoryBloc, NewStoryState>(
      appBar: CustomAppbar(title: 'Truyện Mới'),
      bloc: (_) => newStoryInjector.get<NewStoryBloc>(),
      loadingSelector: (s) => s.isLoading,
      onCreate: (bloc) => bloc.add(const NewStoryEvent.started()),
      body: _NewStoryScreen(),
    );
  }
}

class _NewStoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 12.0),
        CustomCardReading(),
        SizedBox(height: 12.0),
        CustomCardReading(),
        SizedBox(height: 12.0),
        CustomCardReading(),
      ],
    );
  }
}
