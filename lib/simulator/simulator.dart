import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndef/ndef.dart';

import '../game/bl/game_bloc.dart';

class Simulator extends StatelessWidget {
  const Simulator({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            ListTile(
              title: const Text('Scan infinite card'),
              onTap: () => context.read<GameBloc>().add(
                    GameEvent.scanned(
                      [TextRecord(text: 'iddqd')].toIList(),
                    ),
                  ),
            ),
            ListTile(
              title: const Text('Scan correct card'),
              onTap: () => context.read<GameBloc>().add(
                    GameEvent.scanned(
                      [
                        TextRecord(text: 'a'),
                        TextRecord(text: 'a'),
                      ].toIList(),
                    ),
                  ),
            ),
            ListTile(
              title: const Text('Reset card'),
              onTap: () =>
                  context.read<GameBloc>().add(const GameEvent.reset('a')),
            ),
            ListTile(
              title: const Text('Scan wrong card'),
              onTap: () => context.read<GameBloc>().add(
                    GameEvent.scanned(
                      <NDEFRecord>[].toIList(),
                    ),
                  ),
            ),
            ListTile(
              title: const Text('Finish game'),
              onTap: () =>
                  context.read<GameBloc>().add(const GameEvent.finished()),
            ),
          ],
        ),
      );
}
