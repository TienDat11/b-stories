part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({@Default(true) bool isLoading}) = _SplashState;
}
