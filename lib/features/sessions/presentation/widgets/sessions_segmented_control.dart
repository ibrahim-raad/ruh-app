import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

enum SessionsSegment { upcoming, past }

class SessionsSegmentedControl extends StatelessWidget {
  final SessionsSegment selected;
  final ValueChanged<SessionsSegment> onChanged;

  const SessionsSegmentedControl({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        children: [
          Expanded(
            child: _SegmentButton(
              label: 'upcoming',
              selected: selected == SessionsSegment.upcoming,
              onTap: () => onChanged(SessionsSegment.upcoming),
            ),
          ),
          SizedBox(width: 6.w),
          Expanded(
            child: _SegmentButton(
              label: 'past',
              selected: selected == SessionsSegment.past,
              onTap: () => onChanged(SessionsSegment.past),
            ),
          ),
        ],
      ),
    );
  }
}

class _SegmentButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _SegmentButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bg = selected ? context.primary : Colors.transparent;
    final fg = selected ? context.onPrimary : context.onSurfaceVariant;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        height: 40.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: fg,
          ),
        ),
      ),
    );
  }
}
