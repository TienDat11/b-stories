import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_details_event.dart';
part 'story_details_state.dart';
part 'story_details_bloc.freezed.dart';

class StoryDetailsBloc extends Bloc<StoryDetailsEvent, StoryDetailsState> {
  StoryDetailsBloc() : super(_Initial()) {
    on<StoryDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
