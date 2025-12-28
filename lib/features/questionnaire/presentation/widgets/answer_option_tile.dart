import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

class AnswerOptionTile extends StatelessWidget {
  final String text;
  final bool selected;
  final bool isMulti;
  final VoidCallback onTap;

  const AnswerOptionTile({
    super.key,
    required this.text,
    required this.selected,
    required this.isMulti,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bg = selected ? context.primary : context.surfaceContainer;
    final fg = selected ? context.onPrimary : context.onSurface;
    final borderColor = selected ? context.primary : context.outline;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14.r),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: fg,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            if (selected)
              Icon(
                isMulti ? Icons.check_box : Icons.check_circle,
                color: fg,
                size: 18.sp,
              )
            else
              Icon(
                isMulti ? Icons.check_box_outline_blank : Icons.circle_outlined,
                color: fg.withValues(alpha: 0.6),
                size: 18.sp,
              ),
          ],
        ),
      ),
    );
  }
}
