import 'package:injectable/injectable.dart';

import '../di.dart';
import 'game_starter.dart';

@Injectable(env: [envSimulator], as: GameStarter)
class StubGameStarter implements GameStarter {
  @override
  void start() {}
}
