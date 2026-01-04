import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'journal_card.dart';

class InlineErrorCard extends StatelessWidget {
  final String message;

  const InlineErrorCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return JournalCard(
      child: Row(
        children: [
          Icon(Icons.error_outline, color: context.error),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: context.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
