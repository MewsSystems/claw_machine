import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'styles.dart';

class AttemptsScreen extends StatelessWidget {
  const AttemptsScreen({
    super.key,
    required this.attempts,
  });

  final int? attempts;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 32.r),
          Text('You have', style: labelTop),
          Text(
            attempts == null ? '∞' : attempts.toString(),
            style: digit,
          ),
          SizedBox(height: 8.r),
          Text('games left', style: labelBottom),
        ],
      );
}
