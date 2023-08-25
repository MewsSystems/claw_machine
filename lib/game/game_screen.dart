import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../card_reader/card_reader.dart';
import '../di.dart';
import '../game_starter/game_starter.dart';
import 'bl/game_bloc.dart';
import 'widgets/attempts_screen.dart';
import 'widgets/failure_screen.dart';
import 'widgets/game_started_screen.dart';
import 'widgets/screen.dart';
import 'widgets/styles.dart';
import 'widgets/waiting_screen.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late final CardReader _cardReader;
  final _gameStarter = sl<GameStarter>();

  @override
  void initState() {
    super.initState();
    _cardReader = sl<CardReader>()
      ..start((value) {
        if (!mounted) return;

        context.read<GameBloc>().add(GameEvent.scanned(value));
      });
  }

  @override
  void dispose() {
    _cardReader.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocListener<GameBloc, GameState>(
        listener: (context, state) {
          switch (state) {
            case GameStarted():
              _gameStarter.start();
            default:
              break;
          }
        },
        child: BlocBuilder<GameBloc, GameState>(
          builder: (context, state) => Screen(
            color: switch (state) {
              NoAttemptsLeft() => noGamesColor,
              Failure() => errorColor,
              _ => primaryColor,
            },
            child: switch (state) {
              Waiting() || Processing() => const WaitingScreen(),
              Failure() => const FailureScreen(),
              GameStarted(:final attemptsLeft) =>
                GameStartedScreen(attempts: attemptsLeft),
              NoAttemptsLeft() => const AttemptsScreen(attempts: 0),
            },
          ),
        ),
      );
}
