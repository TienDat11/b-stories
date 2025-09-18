part of 'read_bloc.dart';

@freezed
class ReadState with _$ReadState {
  factory ReadState({@Default(false) bool isLoading, String? errorMessage}) =
      _ReadState;
}
