part of 'new_story_bloc.dart';

@freezed
class NewStoryState with _$NewStoryState {
  factory NewStoryState({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _NewStoryState;
}
