import 'dart:io';

import 'package:dart_periphery/dart_periphery.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../di.dart';

final _logger = Logger((GameOverListener).toString());

@Injectable(env: [envRPi])
class GameOverListener {
  GameOverListener();

  void start(void Function() onGameOver) =>
      compute(_listen, null).then((_) => onGameOver());
}

Future<void> _listen(dynamic _) async {
  try {
    useLocalLibrary(CPU_ARCHITECTURE.arm64);

    final gpio = GPIO(26, GPIOdirection.gpioDirOut);

    sleep(const Duration(seconds: 1));

    while (true) {
      if (!gpio.read()) {
        break;
      }
      sleep(const Duration(milliseconds: 10));
    }
  } on Object catch (e, stacktrace) {
    _logger.severe('Failed to check game over GPIO.', e, stacktrace);
    sleep(const Duration(seconds: 3));
  }
}
