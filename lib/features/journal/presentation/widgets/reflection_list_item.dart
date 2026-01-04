import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/journal/domain/entities/reflection.dart';
import 'journal_card.dart';

class ReflectionListItem extends StatelessWidget {
  final Reflection reflection;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ReflectionListItem({
    super.key,
    required this.reflection,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final mood = reflection.mood.name;
    final preview = reflection.content.trim().isEmpty
        ? '—'
        : reflection.content.trim();

    final created = DateFormat(
      'MMM d, yyyy • h:mm a',
    ).format(reflection.createdAt).toLowerCase();

    return JournalCard(
      padding: EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18.r),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: context.tertiary.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(999.r),
                      border: Border.all(color: context.outline),
                    ),
                    child: Text(
                      mood,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w800,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    tooltip: 'Edit',
                    onPressed: onEdit,
                    icon: const Icon(Icons.edit_outlined),
                  ),
                  IconButton(
                    tooltip: 'Delete',
                    onPressed: onDelete,
                    icon: Icon(Icons.delete_outline, color: context.error),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                preview,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: context.onSurface,
                  height: 1.35,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                created,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w600,
                  color: context.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
