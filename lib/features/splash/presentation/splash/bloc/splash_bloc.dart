import 'dart:async';

import 'package:b_stories/features/splash/domain/usecases/check_first_run_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final CheckFirstRunUseCase checkFirstRunUseCase;

  SplashBloc(this.checkFirstRunUseCase) : super(const SplashState()) {
    on<_Started>(_onStarted);
  }

  Future<void> _onStarted(_Started event, Emitter<SplashState> emit) async {
    final isFirstRun = await checkFirstRunUseCase();

    // Nếu không phải lần đầu chạy -> hoàn thành ngay, bỏ qua splash
    if (!isFirstRun) {
      emit(state.copyWith(percent: 100, isFirstRun: false, isCompleted: true));
      return;
    }

    // Lần đầu: chạy progress và hoàn thành sau đó
    int percent = 0;
    final timer = Timer.periodic(const Duration(milliseconds: 200), (t) {
      percent += 5;
      if (percent >= 90) {
        t.cancel();
      }
      emit(state.copyWith(percent: percent, isFirstRun: true));
    });

    await Future.delayed(const Duration(seconds: 5));
    if (timer.isActive) timer.cancel();
    emit(state.copyWith(percent: 100, isFirstRun: true, isCompleted: true));
  }
}
