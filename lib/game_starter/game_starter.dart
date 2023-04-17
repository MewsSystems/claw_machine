import 'dart:io';

import 'package:dart_periphery/dart_periphery.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../di.dart';

final _logger = Logger((GameStarter).toString());

@Injectable(env: [envRPi])
class GameStarter {
  GameStarter() {
    try {
      useLocalLibrary(CPU_ARCHITECTURE.arm64);
      GPIO(21, GPIOdirection.gpioDirOut)
        ..write(true)
        ..dispose();
    } on Object catch (e, stacktrace) {
      _logger.severe('Failed to initialize.', e, stacktrace);
    }
  }

  void start() => compute(_startGame, null);
}

Future<void> _startGame(dynamic _) async {
  try {
    useLocalLibrary(CPU_ARCHITECTURE.arm64);

    final gpio = GPIO(4, GPIOdirection.gpioDirOut)..write(false);
    sleep(const Duration(milliseconds: 10));
    gpio.write(true);
    sleep(const Duration(milliseconds: 200));
    gpio.write(false);
    sleep(const Duration(milliseconds: 100));
    gpio
      ..write(true)
      ..dispose();
  } on Object catch (e, stacktrace) {
    _logger.severe('Failed to start game.', e, stacktrace);
  }
}
