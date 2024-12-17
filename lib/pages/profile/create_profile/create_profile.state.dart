import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_profile.state.freezed.dart';

@freezed
class CreateProfilePageState with _$CreateProfilePageState {
  factory CreateProfilePageState({
    @Default(false) bool isLoading,
  }) = _CreateProfilePageState;
}
