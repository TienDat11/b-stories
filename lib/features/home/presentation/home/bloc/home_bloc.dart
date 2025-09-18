import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:b_stories/features/home/data/model/story_model.dart';
import 'package:b_stories/features/home/data/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.homeRepository}) : super(_HomeState()) {
    on<_Started>(_onInitial);
  }
  final HomeRepository homeRepository;

  Future<void> _onInitial(_Started event, Emitter<HomeState> emit) async {
    // Chỉ fetch data nếu chưa có stories
    if (state.stories.isNotEmpty) {
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final data = await homeRepository.fetchStories();
      emit(state.copyWith(isLoading: false, stories: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
