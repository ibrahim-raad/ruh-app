import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'journal_card.dart';

class ReflectionInputCard extends StatelessWidget {
  final TextEditingController controller;
  final int charCount;

  const ReflectionInputCard({
    super.key,
    required this.controller,
    required this.charCount,
  });

  @override
  Widget build(BuildContext context) {
    return JournalCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WRITE YOUR REFLECTION',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.8,
              color: context.onSurfaceVariant,
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            controller: controller,
            minLines: 6,
            maxLines: 10,
            decoration: const InputDecoration(
              hintText:
                  'how did you feel today? what made\n'
                  'you smile? what challenged you?',
            ),
            textInputAction: TextInputAction.newline,
          ),
          SizedBox(height: 10.h),
          Text(
            '$charCount characters',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
              color: context.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
