import 'package:b_stories/features/detail/story_detail/story_detail_injector.dart';
import 'package:b_stories/features/detail/story_list/story_list_injector.dart';
import 'package:b_stories/features/home/home_injector.dart';
import 'package:b_stories/features/main/main_injector.dart';
import 'package:b_stories/features/new_story/new_story_injector.dart';
import 'package:b_stories/features/read/read_injector.dart';
import 'package:b_stories/features/reading/reading_injector.dart';
import 'package:b_stories/features/splash/splash_injector.dart';
import 'package:b_stories/features/children/children_injector.dart';

Future<void> setupInjector() async {
  // Khởi tạo các injector ở đây
  setupSplashInjector();
  setupMainInjector();
  setupHomeInjector();
  setupChildrenInjector();
  setupReadingInjector();
  setupReadInjector();
  setupNewStoryInjector();
  setupStoryDetailInjector();
  setupStoryListInjector();
}
