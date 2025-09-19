import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_list_event.dart';
part 'story_list_state.dart';
part 'story_list_bloc.freezed.dart';

class StoryListBloc extends Bloc<StoryListEvent, StoryListState> {
  StoryListBloc() : super(_StoryListState()) {
    on<_Started>(_onInitial);
  }

  Future<void> _onInitial(_Started event, Emitter<StoryListState> emit) async {
    // No-op for now
  }
}
