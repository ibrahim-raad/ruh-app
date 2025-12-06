import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppLoader extends StatelessWidget {
  final double? size;
  final Color? color;

  const AppLoader({super.key, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.staggeredDotsWave(
      color: color ?? Theme.of(context).primaryColor,
      size: size ?? 32.sp,
    );
  }
}
