import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_story_event.dart';
part 'add_story_state.dart';
part 'add_story_bloc.freezed.dart';

class AddStoryBloc extends Bloc<AddStoryEvent, AddStoryState> {
  AddStoryBloc() : super(_Initial()) {
    on<AddStoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
