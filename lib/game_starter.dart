import 'dart:io';

import 'package:dart_periphery/dart_periphery.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'di.dart';

@Injectable(env: [envRPi])
class GameStarter {
  GameStarter() {
    try {
      useLocalLibrary(CPU_ARCHITECTURE.arm64);
      GPIO(4, GPIOdirection.gpioDirOut)
        ..write(true)
        ..dispose();
    } catch (e) {
      print(e);
    }
  }

  void start() => compute(_startGame, null);
}

Future<void> _startGame(dynamic _) async {
  try {
    useLocalLibrary(CPU_ARCHITECTURE.arm64);

    final gpio = GPIO(4, GPIOdirection.gpioDirOut);

    gpio.write(false);
    sleep(const Duration(milliseconds: 10));
    gpio.write(true);
    sleep(const Duration(milliseconds: 200));
    gpio.write(false);
    sleep(const Duration(milliseconds: 100));
    gpio.write(true);

    gpio.dispose();
  } catch (e) {
    print(e);
  }
}
