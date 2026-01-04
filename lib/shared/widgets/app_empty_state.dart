import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

class AppEmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? primaryActionLabel;
  final VoidCallback? onPrimaryAction;
  final String? secondaryActionLabel;
  final VoidCallback? onSecondaryAction;
  final bool compact;

  const AppEmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.primaryActionLabel,
    this.onPrimaryAction,
    this.secondaryActionLabel,
    this.onSecondaryAction,
    this.compact = false,
  });

  @override
  Widget build(BuildContext context) {
    final hasPrimary = primaryActionLabel != null && onPrimaryAction != null;
    final hasSecondary =
        secondaryActionLabel != null && onSecondaryAction != null;

    final iconSize = compact ? 22.sp : 26.sp;
    final badgeSize = compact ? 52.w : 64.w;
    final titleSize = compact ? 14.sp : 16.sp;
    final subtitleSize = compact ? 12.sp : 13.sp;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 16.w : 18.w,
        vertical: compact ? 16.h : 18.h,
      ),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: badgeSize,
            height: badgeSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  context.primary.withValues(alpha: 0.18),
                  context.secondary.withValues(alpha: 0.22),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(color: context.outline),
            ),
            child: Icon(icon, size: iconSize, color: context.primary),
          ),
          SizedBox(height: compact ? 12.h : 14.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.w900,
              color: context.onSurface,
              height: 1.15,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: subtitleSize,
              fontWeight: FontWeight.w600,
              color: context.onSurfaceVariant,
              height: 1.35,
            ),
          ),
          if (hasPrimary || hasSecondary) ...[
            SizedBox(height: compact ? 14.h : 16.h),
            if (hasPrimary)
              SizedBox(
                width: double.infinity,
                height: compact ? 44.h : 48.h,
                child: ElevatedButton(
                  onPressed: onPrimaryAction,
                  child: Text(primaryActionLabel!),
                ),
              ),
            if (hasSecondary) ...[
              SizedBox(height: 8.h),
              SizedBox(
                width: double.infinity,
                height: compact ? 44.h : 48.h,
                child: OutlinedButton(
                  onPressed: onSecondaryAction,
                  child: Text(secondaryActionLabel!),
                ),
              ),
            ],
          ],
        ],
      ),
    );
  }
}
