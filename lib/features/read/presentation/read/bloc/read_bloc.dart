import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_event.dart';
part 'read_state.dart';
part 'read_bloc.freezed.dart';

class ReadBloc extends Bloc<ReadEvent, ReadState> {
  ReadBloc() : super(_ReadState()) {
    on<_Started>(_onInitial);
  }

  Future<void> _onInitial(_Started event, Emitter<ReadState> emit) async {
    // No-op for now
  }
}
