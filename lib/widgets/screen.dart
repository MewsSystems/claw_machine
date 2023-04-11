import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/assets.gen.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.child,
    required this.color,
    this.floatingActionButton,
  });

  final Widget child;
  final Color color;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: floatingActionButton,
        body: Center(
          child: AspectRatio(
            aspectRatio: 320 / 480,
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Container(
                padding: EdgeInsets.all(24.r),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Assets.images.clawLogo.svg(width: 110.r),
                    Expanded(child: child),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
