import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';

import 'di.dart';
import 'game/bl/game_bloc.dart';
import 'game/game_screen.dart';
import 'game/widgets/styles.dart';
import 'simulator/simulator.dart';

Future<void> main() async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  Logger.root.onRecord.listen((it) => debugPrint(it.toString()));

  runApp(const ClawMachineApp());
}

class ClawMachineApp extends StatelessWidget {
  const ClawMachineApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => sl<GameBloc>(),
        child: ScreenUtilInit(
          designSize: designSize,
          builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Mews Claw Machine',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: backgroundColor,
              textTheme: Typography.material2021().white.apply(
                    bodyColor: textColor,
                    displayColor: textColor,
                  ),
            ),
            home: const Stack(
              children: [
                GameScreen(),
                if (environment == envSimulator)
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    width: 200,
                    child: Simulator(),
                  )
              ],
            ),
          ),
        ),
      );
}
