import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_story_event.dart';
part 'new_story_state.dart';
part 'new_story_bloc.freezed.dart';

class NewStoryBloc extends Bloc<NewStoryEvent, NewStoryState> {
  NewStoryBloc() : super(_NewStoryState()) {
    on<_Started>(_onInitial);
  }
  Future<void> _onInitial(_Started event, Emitter<NewStoryState> emit) async {
    // No-op for now
  }
}
