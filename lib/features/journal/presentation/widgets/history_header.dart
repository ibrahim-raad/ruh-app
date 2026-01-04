import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'journal_card.dart';

class HistoryHeader extends StatelessWidget {
  final String dateLabel;

  const HistoryHeader({super.key, required this.dateLabel});

  @override
  Widget build(BuildContext context) {
    return JournalCard(
      padding: EdgeInsets.all(14.w),
      child: Row(
        children: [
          Icon(Icons.history, size: 18.sp, color: context.onSurfaceVariant),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              'history • $dateLabel'.toLowerCase(),
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w800,
                color: context.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
