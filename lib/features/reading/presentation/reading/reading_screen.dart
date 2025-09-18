import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/core/components/card/Widget/gradient_progress_bar.dart';
import 'package:b_stories/core/components/card/custom_card_reading.dart';
import 'package:b_stories/features/reading/presentation/reading/bloc/reading_bloc.dart';
import 'package:b_stories/features/reading/reading_injector.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReadingScreen extends StatelessWidget {
  const ReadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ReadingBloc, ReadingState>(
      bloc: (_) => readingInjector.get<ReadingBloc>(),
      loadingSelector: (s) => s.isLoading,
      onCreate: (bloc) => bloc.add(const ReadingEvent.started()),

      body: _ReadingScreen(),
    );
  }
}

class _ReadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomCardReading(),
        SizedBox(height: 12.0),
        CustomCardReading(),
        SizedBox(height: 12.0),
        GradientProgressBar(value: 120 / 212),
        CustomCardReading(),
      ],
    );
  }
}
