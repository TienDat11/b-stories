import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/features/children/children_injector.dart';
import 'package:b_stories/features/children/presentation/children/bloc/children_bloc.dart';
import 'package:b_stories/features/home/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ChildrenScreen extends StatefulWidget {
  const ChildrenScreen({super.key});

  @override
  State<ChildrenScreen> createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ChildrenBloc, ChildrenState>(
      bloc: (_) => childrenInjector.get<ChildrenBloc>(),
      loadingSelector: (s) => false,
      onCreate: (bloc) => bloc.add(const ChildrenEvent.started()),
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
        return Column();
      },
    );
  }
}
