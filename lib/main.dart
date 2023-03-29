import 'dart:ui';

import 'package:dart_periphery/dart_periphery.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndef/ndef.dart';

import 'card_reader.dart';
import 'di.dart';
import 'main_bloc.dart';

Future<void> main() async {
  print('Starting app...');
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  print('Initialized.');

  if (environment == envRPi) {
    useLocalLibrary(CPU_ARCHITECTURE.arm64);
    print('Using local library.');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => sl<MainBloc>(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
              TextRecord(text: 'Hello World'),
              TextRecord(text: 'a'),
            ].toIList(),
          ),
        );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<MainBloc, MainState>(
                builder: (context, state) => Text(state.toString()),
              ),
            ],
          ),
        ),
        floatingActionButton: environment == envSimulator
            ? FloatingActionButton(
                onPressed: _handleStubButtonPressed,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              )
            : null,
      );
}
