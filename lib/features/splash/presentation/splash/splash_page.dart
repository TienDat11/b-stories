import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/base/base_view.dart';
import 'package:b_stories/features/splash/presentation/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashBloc _splashBloc;

  @override
  void initState() {
    _splashBloc = SplashBloc();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _splashBloc.add(const SplashEvent.started());
    });
    super.initState();
  }

  @override
  void dispose() {
    _splashBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashBloc, SplashState>(
      bloc: (_) => _splashBloc,
      loadingSelector: (s) => s.isLoading,
      appBar: AppBar(title: const Text('Splash')),
      body: const _SplashBody(),
    );
  }
}

class _SplashBody extends StatelessWidget {
  const _SplashBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return Center(
          child: state.isLoading
              ? const CircularProgressIndicator()
              : const Text('Splash done!'),
        );
      },
    );
  }
}
