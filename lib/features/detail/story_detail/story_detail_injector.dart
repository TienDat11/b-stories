import 'package:b_stories/features/detail/story_detail/presentation/story_detail/bloc/story_detail_bloc.dart';
import 'package:get_it/get_it.dart';

final storyDetailInjector = GetIt.instance;

void setupStoryDetailInjector() {
  // Repository
  // UseCases
  // Bloc
  storyDetailInjector.registerFactory(() => StoryDetailBloc());
}
