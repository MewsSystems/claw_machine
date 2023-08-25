import 'package:injectable/injectable.dart';

import '../di.dart';
import 'game_over_listener.dart';

@Injectable(env: [envSimulator], as: GameOverListener)
class StubGameOverListener implements GameOverListener {
  const StubGameOverListener();

  @override
  void start(void Function() onGameOver) {}
}
