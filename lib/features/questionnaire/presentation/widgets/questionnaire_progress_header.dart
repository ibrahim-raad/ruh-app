import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/l10n_extensions.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

class QuestionnaireProgressHeader extends StatelessWidget {
  final int current;
  final int total;

  const QuestionnaireProgressHeader({
    super.key,
    required this.current,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final value = total <= 0 ? 0.0 : (current / total).clamp(0.0, 1.0);
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(999.r),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 6.h,
            backgroundColor: context.tertiary,
            valueColor: AlwaysStoppedAnimation<Color>(context.primary),
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          context.tr.questionnaire_progress(current, total),
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: context.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
