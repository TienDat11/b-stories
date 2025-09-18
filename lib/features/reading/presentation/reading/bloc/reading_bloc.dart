import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_event.dart';
part 'reading_state.dart';
part 'reading_bloc.freezed.dart';

class ReadingBloc extends Bloc<ReadingEvent, ReadingState> {
  ReadingBloc() : super(_ReadingState()) {
    on<_Started>(_onInitial);
  }

  Future<void> _onInitial(_Started event, Emitter<ReadingState> emit) async {
    // No-op for now
  }
}
