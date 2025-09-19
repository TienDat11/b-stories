part of 'story_list_bloc.dart';

@freezed
class StoryListState with _$StoryListState {
  factory StoryListState({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _StoryListState;
}
