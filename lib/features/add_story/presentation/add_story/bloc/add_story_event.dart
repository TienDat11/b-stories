part of 'add_story_bloc.dart';

@freezed
class AddStoryEvent with _$AddStoryEvent {
  const factory AddStoryEvent.started() = _Started;
}