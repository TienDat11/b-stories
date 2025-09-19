part of 'story_detail_bloc.dart';

@freezed
class StoryDetailEvent with _$StoryDetailEvent {
  const factory StoryDetailEvent.started() = _Started;
}