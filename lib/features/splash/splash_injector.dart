import 'package:b_stories/features/splash/presentation/splash/bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';

final splashInjector = GetIt.instance;
void setupSplashInjector() {
  //data
  //doamin
  //Bloc
  splashInjector.registerFactory<SplashBloc>(() => SplashBloc());
}
