import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_detail_event.dart';
part 'story_detail_state.dart';
part 'story_detail_bloc.freezed.dart';

class StoryDetailBloc extends Bloc<StoryDetailEvent, StoryDetailState> {
  StoryDetailBloc() : super(_StoryDetailState()) {
    on<_Started>(_onInitial);
  }
  Future<void> _onInitial(
    _Started event,
    Emitter<StoryDetailState> emit,
  ) async {
    // No-op for now
  }
}
