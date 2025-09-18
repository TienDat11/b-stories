import 'package:b_stories/features/new_story/presentation/new_story/bloc/new_story_bloc.dart';
import 'package:get_it/get_it.dart';

final newStoryInjector = GetIt.instance;

void setupNewStoryInjector() {
  // Repository
  // UseCases
  // Bloc
  newStoryInjector.registerFactory(() => NewStoryBloc());
}
