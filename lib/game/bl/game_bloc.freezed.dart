// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameEvent {}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScannedCopyWith<$Res> {
  factory _$$ScannedCopyWith(_$Scanned value, $Res Function(_$Scanned) then) =
      __$$ScannedCopyWithImpl<$Res>;
  @useResult
  $Res call({IList<NDEFRecord> records});
}

/// @nodoc
class __$$ScannedCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$Scanned>
    implements _$$ScannedCopyWith<$Res> {
  __$$ScannedCopyWithImpl(_$Scanned _value, $Res Function(_$Scanned) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
  }) {
    return _then(_$Scanned(
      null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as IList<NDEFRecord>,
    ));
  }
}

/// @nodoc

class _$Scanned implements Scanned {
  const _$Scanned(this.records);

  @override
  final IList<NDEFRecord> records;

  @override
  String toString() {
    return 'GameEvent.scanned(records: $records)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Scanned &&
            const DeepCollectionEquality().equals(other.records, records));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(records));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannedCopyWith<_$Scanned> get copyWith =>
      __$$ScannedCopyWithImpl<_$Scanned>(this, _$identity);
}

abstract class Scanned implements GameEvent {
  const factory Scanned(final IList<NDEFRecord> records) = _$Scanned;

  IList<NDEFRecord> get records;
  @JsonKey(ignore: true)
  _$$ScannedCopyWith<_$Scanned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetCopyWith<$Res> {
  factory _$$ResetCopyWith(_$Reset value, $Res Function(_$Reset) then) =
      __$$ResetCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ResetCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res, _$Reset>
    implements _$$ResetCopyWith<$Res> {
  __$$ResetCopyWithImpl(_$Reset _value, $Res Function(_$Reset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$Reset(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Reset implements Reset {
  const _$Reset(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'GameEvent.reset(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Reset &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetCopyWith<_$Reset> get copyWith =>
      __$$ResetCopyWithImpl<_$Reset>(this, _$identity);
}

abstract class Reset implements GameEvent {
  const factory Reset(final String code) = _$Reset;

  String get code;
  @JsonKey(ignore: true)
  _$$ResetCopyWith<_$Reset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedCopyWith<$Res> {
  factory _$$FinishedCopyWith(
          _$Finished value, $Res Function(_$Finished) then) =
      __$$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$Finished>
    implements _$$FinishedCopyWith<$Res> {
  __$$FinishedCopyWithImpl(_$Finished _value, $Res Function(_$Finished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Finished implements Finished {
  const _$Finished();

  @override
  String toString() {
    return 'GameEvent.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class Finished implements GameEvent {
  const factory Finished() = _$Finished;
}

/// @nodoc
mixin _$GameState {}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WaitingCopyWith<$Res> {
  factory _$$WaitingCopyWith(_$Waiting value, $Res Function(_$Waiting) then) =
      __$$WaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WaitingCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$Waiting>
    implements _$$WaitingCopyWith<$Res> {
  __$$WaitingCopyWithImpl(_$Waiting _value, $Res Function(_$Waiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Waiting implements Waiting {
  const _$Waiting();

  @override
  String toString() {
    return 'GameState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Waiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class Waiting implements GameState {
  const factory Waiting() = _$Waiting;
}

/// @nodoc
abstract class _$$ProcessingCopyWith<$Res> {
  factory _$$ProcessingCopyWith(
          _$Processing value, $Res Function(_$Processing) then) =
      __$$ProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$Processing>
    implements _$$ProcessingCopyWith<$Res> {
  __$$ProcessingCopyWithImpl(
      _$Processing _value, $Res Function(_$Processing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Processing implements Processing {
  const _$Processing();

  @override
  String toString() {
    return 'GameState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Processing);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class Processing implements GameState {
  const factory Processing() = _$Processing;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$Failure>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure();

  @override
  String toString() {
    return 'GameState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class Failure implements GameState {
  const factory Failure() = _$Failure;
}

/// @nodoc
abstract class _$$GameStartedCopyWith<$Res> {
  factory _$$GameStartedCopyWith(
          _$GameStarted value, $Res Function(_$GameStarted) then) =
      __$$GameStartedCopyWithImpl<$Res>;
  @useResult
  $Res call({int? attemptsLeft});
}

/// @nodoc
class __$$GameStartedCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStarted>
    implements _$$GameStartedCopyWith<$Res> {
  __$$GameStartedCopyWithImpl(
      _$GameStarted _value, $Res Function(_$GameStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attemptsLeft = freezed,
  }) {
    return _then(_$GameStarted(
      attemptsLeft: freezed == attemptsLeft
          ? _value.attemptsLeft
          : attemptsLeft // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GameStarted implements GameStarted {
  const _$GameStarted({required this.attemptsLeft});

  @override
  final int? attemptsLeft;

  @override
  String toString() {
    return 'GameState.gameStarted(attemptsLeft: $attemptsLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStarted &&
            (identical(other.attemptsLeft, attemptsLeft) ||
                other.attemptsLeft == attemptsLeft));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attemptsLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStartedCopyWith<_$GameStarted> get copyWith =>
      __$$GameStartedCopyWithImpl<_$GameStarted>(this, _$identity);
}

abstract class GameStarted implements GameState {
  const factory GameStarted({required final int? attemptsLeft}) = _$GameStarted;

  int? get attemptsLeft;
  @JsonKey(ignore: true)
  _$$GameStartedCopyWith<_$GameStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoAttemptsLeftCopyWith<$Res> {
  factory _$$NoAttemptsLeftCopyWith(
          _$NoAttemptsLeft value, $Res Function(_$NoAttemptsLeft) then) =
      __$$NoAttemptsLeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoAttemptsLeftCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$NoAttemptsLeft>
    implements _$$NoAttemptsLeftCopyWith<$Res> {
  __$$NoAttemptsLeftCopyWithImpl(
      _$NoAttemptsLeft _value, $Res Function(_$NoAttemptsLeft) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoAttemptsLeft implements NoAttemptsLeft {
  const _$NoAttemptsLeft();

  @override
  String toString() {
    return 'GameState.noAttemptsLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAttemptsLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class NoAttemptsLeft implements GameState {
  const factory NoAttemptsLeft() = _$NoAttemptsLeft;
}
