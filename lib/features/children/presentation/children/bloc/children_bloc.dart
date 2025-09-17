import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'children_event.dart';
part 'children_state.dart';
part 'children_bloc.freezed.dart';

class ChildrenBloc extends Bloc<ChildrenEvent, ChildrenState> {
  ChildrenBloc() : super(_Initial()) {
    on<ChildrenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
