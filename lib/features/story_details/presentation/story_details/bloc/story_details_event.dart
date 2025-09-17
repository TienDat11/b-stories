part of 'story_details_bloc.dart';

@freezed
class StoryDetailsEvent with _$StoryDetailsEvent {
  const factory StoryDetailsEvent.started() = _Started;
}