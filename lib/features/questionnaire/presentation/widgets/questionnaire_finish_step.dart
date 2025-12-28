import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

class QuestionnaireFinishStep extends StatelessWidget {
  const QuestionnaireFinishStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24.h),
        Container(
          width: 96.w,
          height: 96.w,
          decoration: BoxDecoration(
            color: context.tertiary,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check_circle_outline,
            size: 44.sp,
            color: context.primary,
          ),
        ),
        SizedBox(height: 28.h),
        Text(
          context.tr.questionnaire_finish_title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w800,
            color: context.onSurface,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          context.tr.questionnaire_finish_subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: context.onSurfaceVariant,
            height: 1.35,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
