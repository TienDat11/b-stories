part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(0) int percent,
    @Default(false) bool isFirstRun,
    @Default(false) bool isCompleted,
  }) = _SplashState;
}
