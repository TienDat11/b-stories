part of 'children_bloc.dart';

@freezed
class ChildrenState with _$ChildrenState {
  factory ChildrenState({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ChildrenState;
}
