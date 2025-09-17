import 'package:b_stories/features/home/presentation/home/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

final homeInjector = GetIt.instance;

void setupHomeInjector() {
  // Repository
  // UseCases
  // Bloc
  homeInjector.registerFactory(() => HomeBloc());
}
