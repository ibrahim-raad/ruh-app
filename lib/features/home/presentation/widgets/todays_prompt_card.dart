import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'home_card.dart';

class TodaysPromptCard extends StatelessWidget {
  final String prompt;
  final VoidCallback onWrite;

  const TodaysPromptCard({
    super.key,
    required this.prompt,
    required this.onWrite,
  });

  @override
  Widget build(BuildContext context) {
    return HomeCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "TODAY'S PROMPT",
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
              color: context.onSurfaceVariant,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            '"$prompt"',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: context.onSurface,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.infinity,
            height: 40.h,
            child: OutlinedButton(
              onPressed: onWrite,
              child: const Text('write reflection'),
            ),
          ),
        ],
      ),
    );
  }
}
