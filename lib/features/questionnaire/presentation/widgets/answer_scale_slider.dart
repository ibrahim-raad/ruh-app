import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

class AnswerScaleSlider extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;

  const AnswerScaleSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '$value/10',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: context.primary,
          ),
        ),
        SizedBox(height: 12.h),
        Slider(
          value: value.toDouble(),
          min: 1,
          max: 10,
          divisions: 9,
          label: '$value/10',
          onChanged: (v) => onChanged(v.round()),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1',
              style: TextStyle(
                fontSize: 12.sp,
                color: context.onSurfaceVariant,
              ),
            ),
            Text(
              '10',
              style: TextStyle(
                fontSize: 12.sp,
                color: context.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
