import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/journal/domain/dtos/create_reflection_dto.dart';
import 'journal_card.dart';

class MoodPicker extends StatelessWidget {
  final JournalMood? selected;
  final ValueChanged<JournalMood> onSelected;

  static const _spacing = 10.0;

  const MoodPicker({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final items = <_MoodSpec>[
      const _MoodSpec(
        mood: JournalMood.amazing,
        label: 'amazing',
        icon: Icons.celebration_outlined,
      ),
      const _MoodSpec(
        mood: JournalMood.good,
        label: 'good',
        icon: Icons.sentiment_satisfied_alt_outlined,
      ),
      const _MoodSpec(
        mood: JournalMood.calm,
        label: 'calm',
        icon: Icons.favorite_border,
      ),
      const _MoodSpec(
        mood: JournalMood.okay,
        label: 'okay',
        icon: Icons.sentiment_neutral_outlined,
      ),
      const _MoodSpec(
        mood: JournalMood.struggling,
        label: 'struggling',
        icon: Icons.sentiment_dissatisfied_outlined,
      ),
      const _MoodSpec(
        mood: JournalMood.anxious,
        label: 'anxious',
        icon: Icons.psychology_outlined,
      ),
    ];

    return JournalCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'HOW ARE YOU FEELING?',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
              color: context.onSurfaceVariant,
            ),
          ),
          SizedBox(height: 14.h),
          LayoutBuilder(
            builder: (context, constraints) {
              // 3 items on first row, remaining wrap to 2nd row.
              final tileWidth = (constraints.maxWidth - (2 * _spacing.w)) / 3;

              return Wrap(
                spacing: _spacing.w,
                runSpacing: _spacing.h,
                children: [
                  for (final spec in items)
                    SizedBox(
                      width: tileWidth,
                      child: _MoodItem(
                        label: spec.label,
                        icon: spec.icon,
                        selected: selected == spec.mood,
                        onTap: () => onSelected(spec.mood),
                        baseColor: _MoodColors.forMood(spec.mood),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

final class _MoodColors {
  static Color forMood(JournalMood mood) {
    switch (mood) {
      case JournalMood.amazing:
        return const Color(0xFF22C55E); // green
      case JournalMood.good:
        return const Color(0xFF3B82F6); // blue
      case JournalMood.calm:
        return const Color(0xFF8B5CF6); // purple
      case JournalMood.okay:
        return const Color(0xFFF59E0B); // amber
      case JournalMood.struggling:
        return const Color(0xFFEF4444); // red
      case JournalMood.anxious:
        return const Color(0xFF06B6D4); // cyan
    }
  }
}

class _MoodSpec {
  final JournalMood mood;
  final String label;
  final IconData icon;

  const _MoodSpec({
    required this.mood,
    required this.label,
    required this.icon,
  });
}

class _MoodItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;
  final Color baseColor;

  const _MoodItem({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
    required this.baseColor,
  });

  @override
  Widget build(BuildContext context) {
    final bg = baseColor.withValues(alpha: selected ? 0.22 : 0.12);
    final border = baseColor.withValues(alpha: selected ? 0.95 : 0.35);
    final iconColor = baseColor;
    final labelColor = selected ? context.onSurface : context.onSurfaceVariant;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14.r),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: border),
        ),
        child: Column(
          children: [
            Icon(icon, size: 22.sp, color: iconColor),
            SizedBox(height: 8.h),
            Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: labelColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
