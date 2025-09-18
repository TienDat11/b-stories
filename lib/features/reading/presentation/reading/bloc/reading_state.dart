part of 'reading_bloc.dart';

@freezed
class ReadingState with _$ReadingState {
  factory ReadingState({@Default(false) bool isLoading, String? errorMessage}) =
      _ReadingState;
}
