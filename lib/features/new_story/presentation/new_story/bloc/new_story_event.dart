part of 'new_story_bloc.dart';

@freezed
class NewStoryEvent with _$NewStoryEvent {
  const factory NewStoryEvent.started() = _Started;
}