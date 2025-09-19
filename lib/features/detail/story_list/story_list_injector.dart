import 'package:b_stories/features/detail/story_list/presentation/story_list/bloc/story_list_bloc.dart';
import 'package:get_it/get_it.dart';

final storyListInjector = GetIt.instance;

void setupStoryListInjector() {
  // Repository
  // UseCases
  // Bloc
  storyListInjector.registerFactory(() => StoryListBloc());
}
