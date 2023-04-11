import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import 'styles.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 45.r),
          Assets.images.wrongCard.svg(width: 112.r),
          SizedBox(height: 32.r),
          Text(
            'Card error, please contact our staff',
            style: defaultText,
          ),
        ],
      );
}
