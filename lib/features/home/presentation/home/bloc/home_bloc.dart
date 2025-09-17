import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:b_stories/features/home/data/model/story_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(_HomeState()) {
    on<_Started>(_onInitial);
  }

  Future<void> _onInitial(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      emit(state.copyWith(isLoading: false, stories: stories));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
