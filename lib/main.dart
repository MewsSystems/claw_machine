import 'dart:ui';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndef/ndef.dart';

import 'card_reader.dart';
import 'di.dart';
import 'game_starter.dart';
import 'main_bloc.dart';
import 'widgets/attempts_screen.dart';
import 'widgets/failure_screen.dart';
import 'widgets/styles.dart';
import 'widgets/screen.dart';
import 'widgets/waiting_screen.dart';

Future<void> main() async {
  print('Starting app...');
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  print('Initialized.');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => sl<MainBloc>(),
        child: ScreenUtilInit(
          designSize: const Size(320, 480),
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: backgroundColor,
              textTheme: Typography.material2021().white.apply(
                    bodyColor: textColor,
                    displayColor: textColor,
                  ),
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
        ),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final CardReader _cardReader;
  final _gameStarter = sl<GameStarter>();

  @override
  void initState() {
    super.initState();
    _cardReader = sl<CardReader>()
      ..start((value) {
        if (!mounted) return;

        context.read<MainBloc>().add(MainEvent.scanned(value));
      });
  }

  @override
  void dispose() {
    _cardReader.dispose();
    super.dispose();
  }

  void _handleStubButtonPressed() {
    context.read<MainBloc>().add(
          MainEvent.scanned(
            <NDEFRecord>[
              // TextRecord(text: 'iddqd'),
              TextRecord(text: '1'),
              TextRecord(text: '1'),
            ].toIList(),
          ),
        );
  }

  @override
  Widget build(BuildContext context) => BlocListener<MainBloc, MainState>(
        listener: (context, state) => state.mapOrNull(
          gameStarted: (_) {
            _gameStarter.start();
          },
        ),
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) => Screen(
            color: state.maybeMap(
              noAttemptsLeft: (_) => noGamesColor,
              failure: (_) => errorColor,
              orElse: () => primaryColor,
            ),
            floatingActionButton: environment == envSimulator
                ? FloatingActionButton(
                    onPressed: _handleStubButtonPressed,
                    child: const Icon(Icons.add),
                  )
                : null,
            child: state.map(
              waiting: (_) => const WaitingScreen(),
              processing: (_) => const WaitingScreen(),
              failure: (_) => const FailureScreen(),
              gameStarted: (state) =>
                  AttemptsScreen(attempts: state.attemptsLeft),
              noAttemptsLeft: (_) => const AttemptsScreen(attempts: 0),
            ),
          ),
        ),
      );
}
