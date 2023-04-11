import 'package:async/async.dart';
import 'package:injectable/injectable.dart';

import '../di.dart';

@Injectable(env: [envRPi])
class GameOverListener {
  GameOverListener();

  CancelableOperation<void>? _operation;

  void start(void Function() onGameOver) {
    _operation?.cancel();
    _operation = CancelableOperation.fromFuture(
      Future<void>.delayed(const Duration(seconds: 10)),
    ).then((_) => onGameOver());
  }

  void stop() {
    _operation?.cancel();
  }
}
