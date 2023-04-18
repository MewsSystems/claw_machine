import 'package:injectable/injectable.dart';

import '../di.dart';
import 'game_over_listener.dart';

@Injectable(env: [envSimulator], as: GameOverListener)
class StubGameOverListener implements GameOverListener {
  StubGameOverListener();

  @override
  void start(void Function() onGameOver) {}
}
