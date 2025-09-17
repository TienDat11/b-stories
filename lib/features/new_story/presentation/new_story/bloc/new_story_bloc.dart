import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_story_event.dart';
part 'new_story_state.dart';
part 'new_story_bloc.freezed.dart';

class NewStoryBloc extends Bloc<NewStoryEvent, NewStoryState> {
  NewStoryBloc() : super(_Initial()) {
    on<NewStoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
