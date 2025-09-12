import 'package:auto_route/auto_route.dart';
import 'package:b_stories/core/constants/app_images.dart';
import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_styles.dart';
import 'package:b_stories/features/splash/data/data-source/splash_local_datasource.dart';
import 'package:b_stories/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:b_stories/features/splash/domain/usecases/check_first_run_usecase.dart';
import 'package:b_stories/features/splash/presentation/splash/bloc/splash_bloc.dart';
import 'package:b_stories/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:b_stories/core/components/base/base_view.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashBloc, SplashState>(
      bloc: (_) => SplashBloc(
        CheckFirstRunUseCase(SplashRepositoryImpl(SplashLocalDataSource())),
      )..add(const SplashEvent.started()),
      loadingSelector: (_) => false,
      body: BlocListener<SplashBloc, SplashState>(
        listenWhen: (prev, curr) => prev.isCompleted != curr.isCompleted,
        listener: (context, state) {
          if (state.isCompleted) {
            // AutoRoute navigation
            context.router.replace(const MainRoute()); // vào thẳng Main
          }
        },
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.background),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  const SizedBox.expand(),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.beeknight),
                        SizedBox(height: AppSizes.height.h24),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(AppImages.loading),
                            Text(
                              "${state.percent}%",
                              style: AppStyle.heading15SemiBold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
