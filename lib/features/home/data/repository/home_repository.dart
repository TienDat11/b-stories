import 'package:b_stories/features/home/data/model/story_model.dart';

abstract class HomeRepository {
  Future<List<StoryModel>> fetchStories();
}

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<StoryModel>> fetchStories() async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return stories;
  }
}
