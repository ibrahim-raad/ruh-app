import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';

class HomeGreetingHeader extends StatelessWidget {
  final String firstName;

  const HomeGreetingHeader({super.key, required this.firstName});

  String _timeGreeting(DateTime now) {
    final h = now.hour;
    if (h < 12) return 'good morning';
    if (h < 17) return 'good afternoon';
    return 'good evening';
  }

  @override
  Widget build(BuildContext context) {
    final greeting = _timeGreeting(DateTime.now());

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 18.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        gradient: LinearGradient(
          colors: [context.primary, context.secondary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$greeting, $firstName',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
              color: context.onPrimary,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'how are you feeling today?',
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: context.onPrimary.withValues(alpha: 0.9),
            ),
          ),
        ],
      ),
    );
  }
}
