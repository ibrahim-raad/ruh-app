import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'home_card.dart';

class NextSessionCard extends StatelessWidget {
  final String therapistName;
  final String therapyType;
  final String timeLabel;
  final VoidCallback onJoin;

  const NextSessionCard({
    super.key,
    required this.therapistName,
    required this.therapyType,
    required this.timeLabel,
    required this.onJoin,
  });

  @override
  Widget build(BuildContext context) {
    return HomeCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'NEXT SESSION',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      therapistName,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                        color: context.onSurface,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      therapyType,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 16.sp,
                          color: context.onSurfaceVariant,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          timeLabel,
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: context.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 44.w,
                height: 44.w,
                decoration: BoxDecoration(
                  color: context.tertiary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.videocam_outlined,
                  color: context.primary,
                  size: 22.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton(
              onPressed: onJoin,
              child: const Text('join session'),
            ),
          ),
        ],
      ),
    );
  }
}
