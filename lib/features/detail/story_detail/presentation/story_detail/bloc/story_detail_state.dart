part of 'story_detail_bloc.dart';

@freezed
class StoryDetailState with _$StoryDetailState {
  factory StoryDetailState({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _StoryDetailState;
}
