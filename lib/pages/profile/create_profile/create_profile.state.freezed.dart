// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateProfilePageState {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of CreateProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateProfilePageStateCopyWith<CreateProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfilePageStateCopyWith<$Res> {
  factory $CreateProfilePageStateCopyWith(CreateProfilePageState value,
          $Res Function(CreateProfilePageState) then) =
      _$CreateProfilePageStateCopyWithImpl<$Res, CreateProfilePageState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$CreateProfilePageStateCopyWithImpl<$Res,
        $Val extends CreateProfilePageState>
    implements $CreateProfilePageStateCopyWith<$Res> {
  _$CreateProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateProfilePageState
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
abstract class _$$CreateProfilePageStateImplCopyWith<$Res>
    implements $CreateProfilePageStateCopyWith<$Res> {
  factory _$$CreateProfilePageStateImplCopyWith(
          _$CreateProfilePageStateImpl value,
          $Res Function(_$CreateProfilePageStateImpl) then) =
      __$$CreateProfilePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$CreateProfilePageStateImplCopyWithImpl<$Res>
    extends _$CreateProfilePageStateCopyWithImpl<$Res,
        _$CreateProfilePageStateImpl>
    implements _$$CreateProfilePageStateImplCopyWith<$Res> {
  __$$CreateProfilePageStateImplCopyWithImpl(
      _$CreateProfilePageStateImpl _value,
      $Res Function(_$CreateProfilePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$CreateProfilePageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateProfilePageStateImpl implements _CreateProfilePageState {
  _$CreateProfilePageStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CreateProfilePageState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProfilePageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of CreateProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProfilePageStateImplCopyWith<_$CreateProfilePageStateImpl>
      get copyWith => __$$CreateProfilePageStateImplCopyWithImpl<
          _$CreateProfilePageStateImpl>(this, _$identity);
}

abstract class _CreateProfilePageState implements CreateProfilePageState {
  factory _CreateProfilePageState({final bool isLoading}) =
      _$CreateProfilePageStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of CreateProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProfilePageStateImplCopyWith<_$CreateProfilePageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
