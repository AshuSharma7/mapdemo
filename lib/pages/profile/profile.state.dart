import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.state.freezed.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  factory ProfilePageState({
    @Default(false) bool isLoading,
    String? name,
    String? lastName,
    String? dob,
  }) = _ProfilePageState;
}
