import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';

class ReflectionDetailsSheet extends StatelessWidget {
  final Reflection reflection;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ReflectionDetailsSheet({
    super.key,
    required this.reflection,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final created = DateFormat(
      'MMM d, yyyy • h:mm a',
    ).format(reflection.createdAt).toLowerCase();
    final updated = DateFormat(
      'MMM d, yyyy • h:mm a',
    ).format(reflection.updatedAt).toLowerCase();

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'reflection details',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w900,
                color: context.onSurface,
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                _MetaChip(label: reflection.mood.name),
                SizedBox(width: 8.w),
                _MetaChip(label: 'v${reflection.version}'),
              ],
            ),
            SizedBox(height: 12.h),
            Text(
              reflection.content.trim().isEmpty ? '—' : reflection.content,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
                color: context.onSurface,
                height: 1.4,
              ),
            ),
            SizedBox(height: 14.h),
            Text(
              'created: $created\nupdated: $updated'.toLowerCase(),
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
                color: context.onSurfaceVariant,
                height: 1.3,
              ),
            ),
            SizedBox(height: 18.h),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: onEdit,
                    child: const Text('edit'),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: context.error,
                    ),
                    onPressed: onDelete,
                    child: const Text('delete'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MetaChip extends StatelessWidget {
  final String label;

  const _MetaChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: context.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(999.r),
        border: Border.all(color: context.outline),
      ),
      child: Text(
        label.toLowerCase(),
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w800,
          color: context.onSurfaceVariant,
        ),
      ),
    );
  }
}
