// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:claw_machine/card_reader/card_reader.dart' as _i3;
import 'package:claw_machine/card_reader/stub_card_reader.dart' as _i4;
import 'package:claw_machine/di.dart' as _i11;
import 'package:claw_machine/game/bl/game_bloc.dart' as _i10;
import 'package:claw_machine/game_over_listener/game_over_listener.dart' as _i5;
import 'package:claw_machine/game_over_listener/stub_game_over_listener.dart'
    as _i6;
import 'package:claw_machine/game_starter/game_starter.dart' as _i7;
import 'package:claw_machine/game_starter/stub_game_starter.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

const String _simulator = 'simulator';
const String _rpi = 'rpi';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.CardReader>(
      () => _i4.StubCardReader(),
      registerFor: {_simulator},
    );
    gh.factory<_i3.CardReader>(
      () => _i3.CardReader(),
      registerFor: {_rpi},
    );
    gh.factory<_i5.GameOverListener>(
      () => _i6.StubGameOverListener(),
      registerFor: {_simulator},
    );
    gh.factory<_i5.GameOverListener>(
      () => _i5.GameOverListener(),
      registerFor: {_rpi},
    );
    gh.factory<_i7.GameStarter>(
      () => _i7.GameStarter(),
      registerFor: {_rpi},
    );
    gh.factory<_i7.GameStarter>(
      () => _i8.StubGameStarter(),
      registerFor: {_simulator},
    );
    await gh.factoryAsync<_i9.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i10.GameBloc>(() => _i10.GameBloc(
          gh<_i9.SharedPreferences>(),
          gh<_i5.GameOverListener>(),
        ));
    return this;
  }
}

class _$AppModule extends _i11.AppModule {}
