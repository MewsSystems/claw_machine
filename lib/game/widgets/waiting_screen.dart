import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import 'styles.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 45.r),
          SizedBox(
            width: 112.r,
            height: 84.r,
            child: Assets.animations.cardAnimation.rive(),
          ),
          SizedBox(height: 32.r),
          Text(
            'Put card on the reader, and start the game',
            style: defaultText,
          ),
        ],
      );
}
