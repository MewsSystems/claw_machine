import 'dart:io';

import 'package:dart_periphery/dart_periphery.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../di.dart';

final _logger = Logger((GameStarter).toString());

@Injectable(env: [envRPi])
class GameStarter {
  GameStarter() {
    try {
      GPIO(4, GPIOdirection.gpioDirOut)
        ..write(true)
        ..dispose();
      _logger.info('Initialized.');
    } on Object catch (error, stacktrace) {
      _logger.severe('Failed to initialize.', error, stacktrace);
    }
  }

  void start() {
    try {
      _logger.info('Starting game.');
      final gpio = GPIO(4, GPIOdirection.gpioDirOut)..write(false);
      sleep(const Duration(milliseconds: 10));
      gpio.write(true);
      sleep(const Duration(milliseconds: 200));
      gpio.write(false);
      sleep(const Duration(milliseconds: 100));
      gpio
        ..write(true)
        ..dispose();
    } on Object catch (error, stacktrace) {
      _logger.severe('Failed to start game.', error, stacktrace);
    }
  }
}
