// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:claw_machine/card_reader.dart' as _i3;
import 'package:claw_machine/di.dart' as _i7;
import 'package:claw_machine/main_bloc.dart' as _i6;
import 'package:claw_machine/stub_card_reader.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

const String _rpi = 'rpi';
const String _simulator = 'simulator';

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
      () => _i3.CardReader(),
      registerFor: {_rpi},
    );
    gh.factory<_i3.CardReader>(
      () => _i4.StubCardReader(),
      registerFor: {_simulator},
    );
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i6.MainBloc>(() => _i6.MainBloc(gh<_i5.SharedPreferences>()));
    return this;
  }
}

class _$AppModule extends _i7.AppModule {}
