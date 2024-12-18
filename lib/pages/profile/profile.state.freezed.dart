// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfilePageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePageStateCopyWith<ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePageStateCopyWith<$Res> {
  factory $ProfilePageStateCopyWith(
          ProfilePageState value, $Res Function(ProfilePageState) then) =
      _$ProfilePageStateCopyWithImpl<$Res, ProfilePageState>;
  @useResult
  $Res call({bool isLoading, String? name, String? lastName, String? dob});
}

/// @nodoc
class _$ProfilePageStateCopyWithImpl<$Res, $Val extends ProfilePageState>
    implements $ProfilePageStateCopyWith<$Res> {
  _$ProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? dob = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePageStateImplCopyWith<$Res>
    implements $ProfilePageStateCopyWith<$Res> {
  factory _$$ProfilePageStateImplCopyWith(_$ProfilePageStateImpl value,
          $Res Function(_$ProfilePageStateImpl) then) =
      __$$ProfilePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? name, String? lastName, String? dob});
}

/// @nodoc
class __$$ProfilePageStateImplCopyWithImpl<$Res>
    extends _$ProfilePageStateCopyWithImpl<$Res, _$ProfilePageStateImpl>
    implements _$$ProfilePageStateImplCopyWith<$Res> {
  __$$ProfilePageStateImplCopyWithImpl(_$ProfilePageStateImpl _value,
      $Res Function(_$ProfilePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? name = freezed,
    Object? lastName = freezed,
    Object? dob = freezed,
  }) {
    return _then(_$ProfilePageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfilePageStateImpl implements _ProfilePageState {
  _$ProfilePageStateImpl(
      {this.isLoading = false, this.name, this.lastName, this.dob});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? name;
  @override
  final String? lastName;
  @override
  final String? dob;

  @override
  String toString() {
    return 'ProfilePageState(isLoading: $isLoading, name: $name, lastName: $lastName, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, name, lastName, dob);

  /// Create a copy of ProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePageStateImplCopyWith<_$ProfilePageStateImpl> get copyWith =>
      __$$ProfilePageStateImplCopyWithImpl<_$ProfilePageStateImpl>(
          this, _$identity);
}

abstract class _ProfilePageState implements ProfilePageState {
  factory _ProfilePageState(
      {final bool isLoading,
      final String? name,
      final String? lastName,
      final String? dob}) = _$ProfilePageStateImpl;

  @override
  bool get isLoading;
  @override
  String? get name;
  @override
  String? get lastName;
  @override
  String? get dob;

  /// Create a copy of ProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePageStateImplCopyWith<_$ProfilePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
