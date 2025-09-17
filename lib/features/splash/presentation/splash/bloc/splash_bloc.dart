import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(_SplashState()) {
    on<_Started>(_onInitial);
  }

  Future<void> _onInitial(_Started event, Emitter<SplashState> emit) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(isLoading: false));
  }
}
