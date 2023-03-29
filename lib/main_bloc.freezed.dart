// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IList<NDEFRecord> records) scanned,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IList<NDEFRecord> records)? scanned,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IList<NDEFRecord> records)? scanned,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scanned value) scanned,
    required TResult Function(Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scanned value)? scanned,
    TResult? Function(Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scanned value)? scanned,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

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
    extends _$MainEventCopyWithImpl<$Res, _$Scanned>
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
    return 'MainEvent.scanned(records: $records)';
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IList<NDEFRecord> records) scanned,
    required TResult Function() finished,
  }) {
    return scanned(records);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IList<NDEFRecord> records)? scanned,
    TResult? Function()? finished,
  }) {
    return scanned?.call(records);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IList<NDEFRecord> records)? scanned,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (scanned != null) {
      return scanned(records);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scanned value) scanned,
    required TResult Function(Finished value) finished,
  }) {
    return scanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scanned value)? scanned,
    TResult? Function(Finished value)? finished,
  }) {
    return scanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scanned value)? scanned,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (scanned != null) {
      return scanned(this);
    }
    return orElse();
  }
}

abstract class Scanned implements MainEvent {
  const factory Scanned(final IList<NDEFRecord> records) = _$Scanned;

  IList<NDEFRecord> get records;
  @JsonKey(ignore: true)
  _$$ScannedCopyWith<_$Scanned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishedCopyWith<$Res> {
  factory _$$FinishedCopyWith(
          _$Finished value, $Res Function(_$Finished) then) =
      __$$FinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$Finished>
    implements _$$FinishedCopyWith<$Res> {
  __$$FinishedCopyWithImpl(_$Finished _value, $Res Function(_$Finished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Finished implements Finished {
  const _$Finished();

  @override
  String toString() {
    return 'MainEvent.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Finished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IList<NDEFRecord> records) scanned,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IList<NDEFRecord> records)? scanned,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IList<NDEFRecord> records)? scanned,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Scanned value) scanned,
    required TResult Function(Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Scanned value)? scanned,
    TResult? Function(Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Scanned value)? scanned,
    TResult Function(Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished implements MainEvent {
  const factory Finished() = _$Finished;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() processing,
    required TResult Function() failure,
    required TResult Function(int? attemptsLeft) gameStarted,
    required TResult Function() noAttemptsLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? processing,
    TResult? Function()? failure,
    TResult? Function(int? attemptsLeft)? gameStarted,
    TResult? Function()? noAttemptsLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? processing,
    TResult Function()? failure,
    TResult Function(int? attemptsLeft)? gameStarted,
    TResult Function()? noAttemptsLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(NoAttemptsLeft value) noAttemptsLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(GameStarted value)? gameStarted,
    TResult? Function(NoAttemptsLeft value)? noAttemptsLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(NoAttemptsLeft value)? noAttemptsLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

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
    extends _$MainStateCopyWithImpl<$Res, _$Waiting>
    implements _$$WaitingCopyWith<$Res> {
  __$$WaitingCopyWithImpl(_$Waiting _value, $Res Function(_$Waiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Waiting implements Waiting {
  const _$Waiting();

  @override
  String toString() {
    return 'MainState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Waiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() processing,
    required TResult Function() failure,
    required TResult Function(int? attemptsLeft) gameStarted,
    required TResult Function() noAttemptsLeft,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? processing,
    TResult? Function()? failure,
    TResult? Function(int? attemptsLeft)? gameStarted,
    TResult? Function()? noAttemptsLeft,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? processing,
    TResult Function()? failure,
    TResult Function(int? attemptsLeft)? gameStarted,
    TResult Function()? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(NoAttemptsLeft value) noAttemptsLeft,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(GameStarted value)? gameStarted,
    TResult? Function(NoAttemptsLeft value)? noAttemptsLeft,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(NoAttemptsLeft value)? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class Waiting implements MainState {
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
    extends _$MainStateCopyWithImpl<$Res, _$Processing>
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
    return 'MainState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Processing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() processing,
    required TResult Function() failure,
    required TResult Function(int? attemptsLeft) gameStarted,
    required TResult Function() noAttemptsLeft,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? processing,
    TResult? Function()? failure,
    TResult? Function(int? attemptsLeft)? gameStarted,
    TResult? Function()? noAttemptsLeft,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? processing,
    TResult Function()? failure,
    TResult Function(int? attemptsLeft)? gameStarted,
    TResult Function()? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(NoAttemptsLeft value) noAttemptsLeft,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(GameStarted value)? gameStarted,
    TResult? Function(NoAttemptsLeft value)? noAttemptsLeft,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(NoAttemptsLeft value)? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class Processing implements MainState {
  const factory Processing() = _$Processing;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$Failure>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure();

  @override
  String toString() {
    return 'MainState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() processing,
    required TResult Function() failure,
    required TResult Function(int? attemptsLeft) gameStarted,
    required TResult Function() noAttemptsLeft,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? processing,
    TResult? Function()? failure,
    TResult? Function(int? attemptsLeft)? gameStarted,
    TResult? Function()? noAttemptsLeft,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? processing,
    TResult Function()? failure,
    TResult Function(int? attemptsLeft)? gameStarted,
    TResult Function()? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(NoAttemptsLeft value) noAttemptsLeft,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(GameStarted value)? gameStarted,
    TResult? Function(NoAttemptsLeft value)? noAttemptsLeft,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(NoAttemptsLeft value)? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements MainState {
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
    extends _$MainStateCopyWithImpl<$Res, _$GameStarted>
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
    return 'MainState.gameStarted(attemptsLeft: $attemptsLeft)';
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

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() processing,
    required TResult Function() failure,
    required TResult Function(int? attemptsLeft) gameStarted,
    required TResult Function() noAttemptsLeft,
  }) {
    return gameStarted(attemptsLeft);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? processing,
    TResult? Function()? failure,
    TResult? Function(int? attemptsLeft)? gameStarted,
    TResult? Function()? noAttemptsLeft,
  }) {
    return gameStarted?.call(attemptsLeft);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? processing,
    TResult Function()? failure,
    TResult Function(int? attemptsLeft)? gameStarted,
    TResult Function()? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted(attemptsLeft);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(NoAttemptsLeft value) noAttemptsLeft,
  }) {
    return gameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(GameStarted value)? gameStarted,
    TResult? Function(NoAttemptsLeft value)? noAttemptsLeft,
  }) {
    return gameStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(NoAttemptsLeft value)? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (gameStarted != null) {
      return gameStarted(this);
    }
    return orElse();
  }
}

abstract class GameStarted implements MainState {
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
    extends _$MainStateCopyWithImpl<$Res, _$NoAttemptsLeft>
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
    return 'MainState.noAttemptsLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoAttemptsLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function() processing,
    required TResult Function() failure,
    required TResult Function(int? attemptsLeft) gameStarted,
    required TResult Function() noAttemptsLeft,
  }) {
    return noAttemptsLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function()? processing,
    TResult? Function()? failure,
    TResult? Function(int? attemptsLeft)? gameStarted,
    TResult? Function()? noAttemptsLeft,
  }) {
    return noAttemptsLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function()? processing,
    TResult Function()? failure,
    TResult Function(int? attemptsLeft)? gameStarted,
    TResult Function()? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (noAttemptsLeft != null) {
      return noAttemptsLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Waiting value) waiting,
    required TResult Function(Processing value) processing,
    required TResult Function(Failure value) failure,
    required TResult Function(GameStarted value) gameStarted,
    required TResult Function(NoAttemptsLeft value) noAttemptsLeft,
  }) {
    return noAttemptsLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Waiting value)? waiting,
    TResult? Function(Processing value)? processing,
    TResult? Function(Failure value)? failure,
    TResult? Function(GameStarted value)? gameStarted,
    TResult? Function(NoAttemptsLeft value)? noAttemptsLeft,
  }) {
    return noAttemptsLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Waiting value)? waiting,
    TResult Function(Processing value)? processing,
    TResult Function(Failure value)? failure,
    TResult Function(GameStarted value)? gameStarted,
    TResult Function(NoAttemptsLeft value)? noAttemptsLeft,
    required TResult orElse(),
  }) {
    if (noAttemptsLeft != null) {
      return noAttemptsLeft(this);
    }
    return orElse();
  }
}

abstract class NoAttemptsLeft implements MainState {
  const factory NoAttemptsLeft() = _$NoAttemptsLeft;
}
