import 'package:dart_periphery/dart_periphery.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

import '../di.dart';

final _logger = Logger((GameOverListener).toString());

@Injectable(env: [envRPi])
class GameOverListener {
  const GameOverListener();

  void start(void Function() onGameOver) => _listen().then((_) => onGameOver());
}

Future<void> _listen() async {
  try {
    _logger.info('Waiting for game over GPIO.');
    final gpio = GPIO(21, GPIOdirection.gpioDirOut);

    await Future<void>.delayed(const Duration(seconds: 1));

    while (true) {
      if (!gpio.read()) {
        break;
      }
      await Future<void>.delayed(const Duration(milliseconds: 10));
    }

    gpio.dispose();
  } on Object catch (error, stacktrace) {
    _logger.severe('Failed to check game over GPIO.', error, stacktrace);
    await Future<void>.delayed(const Duration(seconds: 3));
  }
}
