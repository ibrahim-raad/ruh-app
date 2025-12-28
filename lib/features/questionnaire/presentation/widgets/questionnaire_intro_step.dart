import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/questionnaire/domain/entities/questionnaire.dart';

class QuestionnaireIntroStep extends StatelessWidget {
  final Questionnaire questionnaire;
  final IconData icon;

  const QuestionnaireIntroStep({
    super.key,
    required this.questionnaire,
    required this.icon,
  });

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
          child: Icon(icon, size: 44.sp, color: context.primary),
        ),
        SizedBox(height: 28.h),
        Text(
          questionnaire.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w800,
            color: context.onSurface,
            height: 1.2,
          ),
        ),
        if ((questionnaire.description ?? '').trim().isNotEmpty) ...[
          SizedBox(height: 12.h),
          Text(
            questionnaire.description!.trim(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: context.onSurfaceVariant,
              height: 1.35,
            ),
          ),
        ],
        const Spacer(),
      ],
    );
  }
}
