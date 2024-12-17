import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_phone.state.freezed.dart';

@freezed
class LoginPhoneState with _$LoginPhoneState {
  factory LoginPhoneState({
    @Default(false) bool isLoading,
  }) = _LoginPhoneState;
}
