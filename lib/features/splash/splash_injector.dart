import 'package:b_stories/features/splash/presentation/splash/bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';

final splashInjector = GetIt.instance;

void setupSplashInjector() {
  // Repository
  // UseCases
  // Bloc
  splashInjector.registerFactory(() => SplashBloc());
}
  // Repository
  //final splashRepo = SplashRepositoryImpl(SplashLocalDataSource());

  // UseCases
  //final checkFirstLaunchUseCase = CheckFirstRunUseCase(splashRepo);

  // Bloc
  // splashInjector.registerFactory<SplashBloc>(
  //   () => SplashBloc(checkFirstLaunchUseCase),
  // );