import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/sessions/domain/entities/session.dart';

class SessionCard extends StatelessWidget {
  final String therapistName;
  final String therapyType;
  final SessionStatus status;
  final String dateLabel;
  final String timeLabel;
  final String durationLabel;
  final bool isUpcoming;
  final VoidCallback onPrimaryAction;
  final VoidCallback onSecondaryAction;

  const SessionCard({
    super.key,
    required this.therapistName,
    required this.therapyType,
    required this.status,
    required this.dateLabel,
    required this.timeLabel,
    required this.durationLabel,
    required this.isUpcoming,
    required this.onPrimaryAction,
    required this.onSecondaryAction,
  });

  @override
  Widget build(BuildContext context) {
    final (:label, :bg, :fg, :icon) = _statusSpec(context, status);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48.w,
                height: 48.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.surfaceContainerHighest,
                  border: Border.all(color: context.outline),
                ),
                child: Icon(
                  Icons.person,
                  color: context.onSurfaceVariant,
                  size: 24.sp,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      therapistName,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        color: context.onSurface,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      therapyType,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    _StatusPill(label: label, bg: bg, fg: fg, icon: icon),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          Row(
            children: [
              Icon(
                Icons.calendar_today_outlined,
                size: 16.sp,
                color: context.onSurfaceVariant,
              ),
              SizedBox(width: 8.w),
              Text(
                dateLabel,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: context.onSurfaceVariant,
                ),
              ),
              SizedBox(width: 14.w),
              Icon(
                Icons.access_time,
                size: 16.sp,
                color: context.onSurfaceVariant,
              ),
              SizedBox(width: 8.w),
              Text(
                '$timeLabel ($durationLabel)',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: context.onSurfaceVariant,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: isUpcoming
                    ? ElevatedButton.icon(
                        onPressed: onPrimaryAction,
                        icon: const Icon(Icons.videocam_outlined, size: 18),
                        label: const Text('join session'),
                      )
                    : OutlinedButton.icon(
                        onPressed: onPrimaryAction,
                        icon: const Icon(Icons.receipt_long_outlined, size: 18),
                        label: const Text('view summary'),
                      ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: isUpcoming
                    ? OutlinedButton.icon(
                        onPressed: onSecondaryAction,
                        icon: const Icon(Icons.refresh, size: 18),
                        label: const Text('reschedule'),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.secondary,
                          foregroundColor: context.onSecondary,
                        ),
                        onPressed: onSecondaryAction,
                        child: const Text('add reflection'),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

({String label, Color bg, Color fg, IconData icon}) _statusSpec(
  BuildContext context,
  SessionStatus status,
) {
  switch (status) {
    case SessionStatus.confirmed:
      return (
        label: 'confirmed',
        bg: context.tertiary.withValues(alpha: 0.8),
        fg: context.onTertiary,
        icon: Icons.check_circle_outline,
      );
    case SessionStatus.pending:
      return (
        label: 'pending',
        bg: context.secondary.withValues(alpha: 0.22),
        fg: context.onSurfaceVariant,
        icon: Icons.schedule_outlined,
      );
    case SessionStatus.rescheduled:
      return (
        label: 'rescheduled',
        bg: context.secondary.withValues(alpha: 0.22),
        fg: context.onSurfaceVariant,
        icon: Icons.refresh,
      );
    case SessionStatus.completed:
      return (
        label: 'completed',
        bg: context.secondary.withValues(alpha: 0.25),
        fg: context.onSurfaceVariant,
        icon: Icons.task_alt,
      );
    case SessionStatus.cancelled:
      return (
        label: 'cancelled',
        bg: context.error.withValues(alpha: 0.12),
        fg: context.error,
        icon: Icons.cancel_outlined,
      );
    case SessionStatus.missed:
      return (
        label: 'missed',
        bg: context.error.withValues(alpha: 0.12),
        fg: context.error,
        icon: Icons.event_busy_outlined,
      );
  }
}

class _StatusPill extends StatelessWidget {
  final String label;
  final Color bg;
  final Color fg;
  final IconData icon;

  const _StatusPill({
    required this.label,
    required this.bg,
    required this.fg,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(999.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.sp, color: fg),
          SizedBox(width: 6.w),
          Text(
            label,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              color: fg,
            ),
          ),
        ],
      ),
    );
  }
}
