import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/shared/widgets/app_avatar.dart';
import 'home_card.dart';

class CurrentTherapistCard extends StatelessWidget {
  final String therapistName;
  final String subtitle;
  final String? avatarUrl;
  final VoidCallback onBookSession;
  final VoidCallback onTransferRequest;

  const CurrentTherapistCard({
    super.key,
    required this.therapistName,
    required this.subtitle,
    required this.avatarUrl,
    required this.onBookSession,
    required this.onTransferRequest,
  });

  @override
  Widget build(BuildContext context) {
    return HomeCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppAvatar(imageUrl: avatarUrl, size: 52.w),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CURRENT THERAPIST',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      therapistName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: context.onSurface,
                        height: 1.15,
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Container(
                width: 44.w,
                height: 44.w,
                decoration: BoxDecoration(
                  color: context.tertiary.withValues(alpha: 0.85),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.support_agent_outlined,
                  color: context.primary,
                  size: 22.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.infinity,
            height: 48.h,
            child: ElevatedButton.icon(
              onPressed: onBookSession,
              icon: const Icon(Icons.event_available_outlined, size: 18),
              label: const Text('book a session'),
            ),
          ),
          SizedBox(height: 8.h),
          Center(
            child: TextButton(
              onPressed: onTransferRequest,
              child: const Text('transfer therapist request'),
            ),
          ),
        ],
      ),
    );
  }
}
