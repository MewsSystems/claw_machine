import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ndef/ndef.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'main_bloc.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.scanned(IList<NDEFRecord> records) = Scanned;

  const factory MainEvent.finished() = Finished;
}

@freezed
class MainState with _$MainState {
  const factory MainState.waiting() = Waiting;

  const factory MainState.processing() = Processing;

  const factory MainState.failure() = Failure;

  const factory MainState.gameStarted({required int? attemptsLeft}) =
      GameStarted;

  const factory MainState.noAttemptsLeft() = NoAttemptsLeft;
}

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(this._prefs) : super(const MainState.waiting()) {
    on<MainEvent>(_handler);
  }

  final SharedPreferences _prefs;

  EventHandler<MainEvent, MainState> get _handler => (event, emit) => event.map(
        scanned: (event) => _handleScanned(event, emit),
        finished: (event) => _handleFinished(event, emit),
      );

  Future<void> _handleScanned(Scanned event, Emitter<MainState> emit) async {
    if (state is! Waiting) return;

    emit(const MainState.processing());

    if (event.records.isEmpty) {
      await _emitFailure(emit);

      return;
    }

    final firstRecord = event.records[0];
    if (firstRecord is TextRecord && firstRecord.text == 'iddqd') {
      await _emitStarted(emit, attemptsLeft: null);

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
      final attemptsLeft = _prefs.getInt(text) ?? 3;
      if (attemptsLeft == 0) {
        emit(const MainState.noAttemptsLeft());
        await Future<void>.delayed(const Duration(seconds: 3));
        emit(const MainState.waiting());

        return;
      }
      await _prefs.setInt(text, attemptsLeft - 1);

      await _emitStarted(emit, attemptsLeft: attemptsLeft);
    }
  }

  Future<void> _handleFinished(Finished event, Emitter<MainState> emit) async {
    if (state is! GameStarted) return;

    emit(const MainState.waiting());
  }

  Future<void> _emitFailure(Emitter<MainState> emit) async {
    emit(const MainState.failure());
    await Future<void>.delayed(const Duration(seconds: 3));
    emit(const MainState.waiting());
  }

  Future<void> _emitStarted(
    Emitter<MainState> emit, {
    required int? attemptsLeft,
  }) async {
    emit(MainState.gameStarted(attemptsLeft: attemptsLeft));
    await Future<void>.delayed(const Duration(seconds: 3));
    add(const MainEvent.finished());
  }
}
