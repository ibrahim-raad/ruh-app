import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'home_card.dart';

class ExploreTherapistsCard extends StatelessWidget {
  final VoidCallback onDiscover;

  const ExploreTherapistsCard({super.key, required this.onDiscover});

  @override
  Widget build(BuildContext context) {
    return HomeCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'explore therapists',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
              color: context.onSurface,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            'find a therapist who understands your\nunique needs',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: context.onSurfaceVariant,
              height: 1.3,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.infinity,
            height: 44.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.secondary,
                foregroundColor: context.onSecondary,
              ),
              onPressed: onDiscover,
              child: const Text('discover therapists'),
            ),
          ),
        ],
      ),
    );
  }
}
