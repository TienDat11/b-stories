import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/components/text/custom_text.dart';
import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/features/splash/presentation/splash/bloc/splash_bloc.dart';
import 'package:b_stories/features/splash/splash_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:b_stories/core/components/base/base_view.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashBloc _splashBloc;

  @override
  void initState() {
    _splashBloc = splashInjector.get();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _splashBloc.add(const SplashEvent.started());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashBloc, SplashState>(
      bloc: (_) => _splashBloc,
      // Lấy cờ loading từ state để EasyLoading show/hide
      loadingSelector: (state) => state.isLoading,
      // appBar: AppBar(title: const Text('Đăng nhập')),
      // Bật SafeArea nếu bạn muốn
      // safeArea: true,
      body: const _SplashBody(),
    );
  }
}

class _SplashBody extends StatelessWidget {
  const _SplashBody();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.background),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Nội dung chính ở giữa màn hình
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.beeknight),
              SizedBox(height: AppSizes.height.h24),
              // Trạng thái loading ở cuối màn hình
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: BlocBuilder<SplashBloc, SplashState>(
                  builder: (context, state) {
                    return CustomText(
                      'isLoading: ${state.isLoading}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
