import 'package:b_stories/features/reading/presentation/reading/bloc/reading_bloc.dart';
import 'package:get_it/get_it.dart';

final readingInjector = GetIt.instance;

void setupReadingInjector() {
  // Repository
  // UseCases
  // Bloc
  readingInjector.registerFactory(() => ReadingBloc());
}
