import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ndef/ndef.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../game_over_listener/game_over_listener.dart';

part 'game_bloc.freezed.dart';

@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.scanned(IList<NDEFRecord> records) = Scanned;

  const factory GameEvent.reset(String code) = Reset;

  const factory GameEvent.finished() = Finished;
}

@freezed
sealed class GameState with _$GameState {
  const factory GameState.waiting() = Waiting;

  const factory GameState.processing() = Processing;

  const factory GameState.failure() = Failure;

  const factory GameState.gameStarted({required int? attemptsLeft}) =
      GameStarted;

  const factory GameState.noAttemptsLeft() = NoAttemptsLeft;
}

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(
    this._prefs,
    this._gameOverListener,
  ) : super(const GameState.waiting()) {
    on<GameEvent>(_handler);
  }

  final SharedPreferences _prefs;
  final GameOverListener _gameOverListener;

  EventHandler<GameEvent, GameState> get _handler =>
      (event, emit) => switch (event) {
            Scanned() => _handleScanned(event, emit),
            Finished() => _handleFinished(event, emit),
            Reset() => _handleReset(event, emit),
          };

  Future<void> _handleScanned(Scanned event, Emitter<GameState> emit) async {
    if (state is! Waiting) return;

    emit(const GameState.processing());

    if (event.records.isEmpty) {
      await _emitFailure(emit);

      return;
    }

    final firstRecord = event.records[0];
    if (firstRecord is TextRecord && firstRecord.text == 'iddqd') {
      _emitStarted(emit, attemptsLeft: null);

      return;
    }

    if (event.records.length != 2) {
      await _emitFailure(emit);

      return;
    }

    final secondRecord = event.records[1];
    if (secondRecord is! TextRecord) {
      await _emitFailure(emit);

      return;
    }

    final text = secondRecord.text;
    if (text == null) {
      await _emitFailure(emit);
    } else {
      final attemptsLeft = _prefs.getInt(text) ?? _totalAttempts;
      if (attemptsLeft == 0) {
        emit(const GameState.noAttemptsLeft());
        await Future<void>.delayed(const Duration(seconds: 3));
        emit(const GameState.waiting());

        return;
      }
      await _prefs.setInt(text, attemptsLeft - 1);

      _emitStarted(emit, attemptsLeft: attemptsLeft);
    }
  }

  void _handleFinished(Finished _, Emitter<GameState> emit) {
    if (state is! GameStarted) return;

    emit(const GameState.waiting());
  }

  Future<void> _handleReset(Reset event, Emitter<GameState> _) async {
    await _prefs.remove(event.code);
  }

  Future<void> _emitFailure(Emitter<GameState> emit) async {
    emit(const GameState.failure());
    await Future<void>.delayed(const Duration(seconds: 3));
    emit(const GameState.waiting());
  }

  void _emitStarted(
    Emitter<GameState> emit, {
    required int? attemptsLeft,
  }) {
    emit(GameState.gameStarted(attemptsLeft: attemptsLeft));

    _gameOverListener.start(() {
      if (isClosed) return;

      add(const GameEvent.finished());
    });
  }
}

const _totalAttempts = 3;
