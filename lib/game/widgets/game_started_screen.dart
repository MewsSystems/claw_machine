import 'package:flutter/material.dart';

import 'attempts_screen.dart';
import 'game_in_progress_screen.dart';

class GameStartedScreen extends StatefulWidget {
  const GameStartedScreen({super.key, required this.attempts});

  final int? attempts;

  @override
  State<GameStartedScreen> createState() => _GameStartedScreenState();
}

class _GameStartedScreenState extends State<GameStartedScreen> {
  final _delay = Future<void>.delayed(const Duration(seconds: 3));

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: _delay,
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.done
                ? const GameInProgressScreen()
                : AttemptsScreen(attempts: widget.attempts),
      );
}
