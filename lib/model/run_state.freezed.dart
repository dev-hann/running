// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'run_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RunState {
  LatLng? get currentPosition => throw _privateConstructorUsedError;
  String get recordKey => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  /// Create a copy of RunState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RunStateCopyWith<RunState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RunStateCopyWith<$Res> {
  factory $RunStateCopyWith(RunState value, $Res Function(RunState) then) =
      _$RunStateCopyWithImpl<$Res, RunState>;
  @useResult
  $Res call({LatLng? currentPosition, String recordKey, Duration duration});
}

/// @nodoc
class _$RunStateCopyWithImpl<$Res, $Val extends RunState>
    implements $RunStateCopyWith<$Res> {
  _$RunStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RunState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = freezed,
    Object? recordKey = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      recordKey: null == recordKey
          ? _value.recordKey
          : recordKey // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RunStateImplCopyWith<$Res>
    implements $RunStateCopyWith<$Res> {
  factory _$$RunStateImplCopyWith(
          _$RunStateImpl value, $Res Function(_$RunStateImpl) then) =
      __$$RunStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng? currentPosition, String recordKey, Duration duration});
}

/// @nodoc
class __$$RunStateImplCopyWithImpl<$Res>
    extends _$RunStateCopyWithImpl<$Res, _$RunStateImpl>
    implements _$$RunStateImplCopyWith<$Res> {
  __$$RunStateImplCopyWithImpl(
      _$RunStateImpl _value, $Res Function(_$RunStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RunState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = freezed,
    Object? recordKey = null,
    Object? duration = null,
  }) {
    return _then(_$RunStateImpl(
      currentPosition: freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      recordKey: null == recordKey
          ? _value.recordKey
          : recordKey // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$RunStateImpl extends _RunState {
  _$RunStateImpl(
      {this.currentPosition,
      this.recordKey = "",
      this.duration = Duration.zero})
      : super._();

  @override
  final LatLng? currentPosition;
  @override
  @JsonKey()
  final String recordKey;
  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'RunState(currentPosition: $currentPosition, recordKey: $recordKey, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RunStateImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition) &&
            (identical(other.recordKey, recordKey) ||
                other.recordKey == recordKey) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPosition, recordKey, duration);

  /// Create a copy of RunState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RunStateImplCopyWith<_$RunStateImpl> get copyWith =>
      __$$RunStateImplCopyWithImpl<_$RunStateImpl>(this, _$identity);
}

abstract class _RunState extends RunState {
  factory _RunState(
      {final LatLng? currentPosition,
      final String recordKey,
      final Duration duration}) = _$RunStateImpl;
  _RunState._() : super._();

  @override
  LatLng? get currentPosition;
  @override
  String get recordKey;
  @override
  Duration get duration;

  /// Create a copy of RunState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RunStateImplCopyWith<_$RunStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
