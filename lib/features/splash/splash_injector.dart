import 'package:b_stories/features/splash/data/data-source/splash_local_datasource.dart';
import 'package:b_stories/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:b_stories/features/splash/domain/usecases/check_first_run_usecase.dart';
import 'package:b_stories/features/splash/presentation/splash/bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';

final splashInjector = GetIt.instance;

void setupSplashInjector() {
  // Repository
  final splashRepo = SplashRepositoryImpl(SplashLocalDataSource());

  // UseCases
  final checkFirstLaunchUseCase = CheckFirstRunUseCase(splashRepo);

  // Bloc
  splashInjector.registerFactory<SplashBloc>(
    () => SplashBloc(checkFirstLaunchUseCase),
  );
}
