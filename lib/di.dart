import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di.config.dart';

final sl = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async => sl.init(environment: environment);

const envSimulator = 'simulator';
const envRPi = 'rpi';

const environment = String.fromEnvironment('env', defaultValue: envRPi);

@module
abstract class AppModule {
  const AppModule();

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
