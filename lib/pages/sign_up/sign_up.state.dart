import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up.state.freezed.dart';

@freezed
class SignUpPageState with _$SignUpPageState {
  factory SignUpPageState({
    @Default(false) bool isLoading,
  }) = _SignUpPageState;
}
