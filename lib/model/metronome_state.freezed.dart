// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metronome_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MetronomeState {
  bool get enable => throw _privateConstructorUsedError;
  int get bpm => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

  /// Create a copy of MetronomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetronomeStateCopyWith<MetronomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetronomeStateCopyWith<$Res> {
  factory $MetronomeStateCopyWith(
          MetronomeState value, $Res Function(MetronomeState) then) =
      _$MetronomeStateCopyWithImpl<$Res, MetronomeState>;
  @useResult
  $Res call({bool enable, int bpm, bool isPlaying});
}

/// @nodoc
class _$MetronomeStateCopyWithImpl<$Res, $Val extends MetronomeState>
    implements $MetronomeStateCopyWith<$Res> {
  _$MetronomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetronomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? bpm = null,
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      bpm: null == bpm
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetronomeStateImplCopyWith<$Res>
    implements $MetronomeStateCopyWith<$Res> {
  factory _$$MetronomeStateImplCopyWith(_$MetronomeStateImpl value,
          $Res Function(_$MetronomeStateImpl) then) =
      __$$MetronomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enable, int bpm, bool isPlaying});
}

/// @nodoc
class __$$MetronomeStateImplCopyWithImpl<$Res>
    extends _$MetronomeStateCopyWithImpl<$Res, _$MetronomeStateImpl>
    implements _$$MetronomeStateImplCopyWith<$Res> {
  __$$MetronomeStateImplCopyWithImpl(
      _$MetronomeStateImpl _value, $Res Function(_$MetronomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetronomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? bpm = null,
    Object? isPlaying = null,
  }) {
    return _then(_$MetronomeStateImpl(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      bpm: null == bpm
          ? _value.bpm
          : bpm // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MetronomeStateImpl implements _MetronomeState {
  const _$MetronomeStateImpl(
      {this.enable = false, this.bpm = 170, this.isPlaying = false});

  @override
  @JsonKey()
  final bool enable;
  @override
  @JsonKey()
  final int bpm;
  @override
  @JsonKey()
  final bool isPlaying;

  @override
  String toString() {
    return 'MetronomeState(enable: $enable, bpm: $bpm, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetronomeStateImpl &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.bpm, bpm) || other.bpm == bpm) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enable, bpm, isPlaying);

  /// Create a copy of MetronomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetronomeStateImplCopyWith<_$MetronomeStateImpl> get copyWith =>
      __$$MetronomeStateImplCopyWithImpl<_$MetronomeStateImpl>(
          this, _$identity);
}

abstract class _MetronomeState implements MetronomeState {
  const factory _MetronomeState(
      {final bool enable,
      final int bpm,
      final bool isPlaying}) = _$MetronomeStateImpl;

  @override
  bool get enable;
  @override
  int get bpm;
  @override
  bool get isPlaying;

  /// Create a copy of MetronomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetronomeStateImplCopyWith<_$MetronomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
