import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import 'styles.dart';

class GameInProgressScreen extends StatelessWidget {
  const GameInProgressScreen({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 24.r),
          Text('Game is on', style: labelTop.copyWith(fontSize: 36.r)),
          SizedBox(height: 24.r),
          SizedBox(
            width: 106.5.r,
            height: 233.r,
            child: Assets.animations.claw.rive(),
          )
        ],
      );
}
