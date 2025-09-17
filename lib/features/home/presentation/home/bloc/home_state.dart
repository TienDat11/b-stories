part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(false) bool isLoading,
    @Default([]) List<StoryModel> stories,
    String? errorMessage,
  }) = _HomeState;
}
