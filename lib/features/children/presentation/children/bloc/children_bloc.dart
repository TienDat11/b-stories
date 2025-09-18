import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'children_event.dart';
part 'children_state.dart';
part 'children_bloc.freezed.dart';

class ChildrenBloc extends Bloc<ChildrenEvent, ChildrenState> {
  ChildrenBloc() : super(_ChildrenState()) {
    on<_Started>(_onInitial);
  }

  Future<void> _onInitial(_Started event, Emitter<ChildrenState> emit) async {
    // No-op for now
  }
}
