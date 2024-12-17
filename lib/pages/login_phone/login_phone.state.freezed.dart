// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_phone.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginPhoneState {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of LoginPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginPhoneStateCopyWith<LoginPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPhoneStateCopyWith<$Res> {
  factory $LoginPhoneStateCopyWith(
          LoginPhoneState value, $Res Function(LoginPhoneState) then) =
      _$LoginPhoneStateCopyWithImpl<$Res, LoginPhoneState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoginPhoneStateCopyWithImpl<$Res, $Val extends LoginPhoneState>
    implements $LoginPhoneStateCopyWith<$Res> {
  _$LoginPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginPhoneStateImplCopyWith<$Res>
    implements $LoginPhoneStateCopyWith<$Res> {
  factory _$$LoginPhoneStateImplCopyWith(_$LoginPhoneStateImpl value,
          $Res Function(_$LoginPhoneStateImpl) then) =
      __$$LoginPhoneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoginPhoneStateImplCopyWithImpl<$Res>
    extends _$LoginPhoneStateCopyWithImpl<$Res, _$LoginPhoneStateImpl>
    implements _$$LoginPhoneStateImplCopyWith<$Res> {
  __$$LoginPhoneStateImplCopyWithImpl(
      _$LoginPhoneStateImpl _value, $Res Function(_$LoginPhoneStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoginPhoneStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginPhoneStateImpl implements _LoginPhoneState {
  _$LoginPhoneStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LoginPhoneState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPhoneStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of LoginPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPhoneStateImplCopyWith<_$LoginPhoneStateImpl> get copyWith =>
      __$$LoginPhoneStateImplCopyWithImpl<_$LoginPhoneStateImpl>(
          this, _$identity);
}

abstract class _LoginPhoneState implements LoginPhoneState {
  factory _LoginPhoneState({final bool isLoading}) = _$LoginPhoneStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of LoginPhoneState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginPhoneStateImplCopyWith<_$LoginPhoneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
