import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/core/components/card/custom_card_reading.dart';
import 'package:b_stories/core/constants/app_colors.dart';
import 'package:b_stories/features/read/presentation/read/bloc/read_bloc.dart';
import 'package:b_stories/features/read/read_injector.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReadScreen extends StatefulWidget {
  const ReadScreen({super.key});

  @override
  State<ReadScreen> createState() => _ReadScreenState();
}

class _ReadScreenState extends State<ReadScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ReadBloc, ReadState>(
      bloc: (_) => readInjector.get<ReadBloc>(),
      loadingSelector: (s) => s.isLoading,
      onCreate: (bloc) => bloc.add(const ReadEvent.started()),

      body: _ReadScreen(),
    );
  }
}

class _ReadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomCardReading(),
        SizedBox(height: 12.0),
        CustomCardReading(),
        SizedBox(height: 12.0),
        CustomCardReading(),
      ],
    );
  }
}
