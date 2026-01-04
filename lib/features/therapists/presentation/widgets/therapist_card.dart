import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/shared/widgets/app_avatar.dart';
import '../../domain/entities/therapist.dart';

class TherapistCard extends StatelessWidget {
  final TherapistOutput therapist;
  final VoidCallback onViewProfile;
  final VoidCallback? onTransferSelect;

  const TherapistCard({
    super.key,
    required this.therapist,
    required this.onViewProfile,
    this.onTransferSelect,
  });

  @override
  Widget build(BuildContext context) {
    final name = therapist.user?.fullName.trim();
    final displayName = (name == null || name.isEmpty) ? 'therapist' : name;
    final specializations = therapist.specializations
        .map((s) => s.name.trim())
        .where((s) => s.isNotEmpty)
        .toList();
    final specialty = specializations.isEmpty
        ? 'specialization'
        : specializations.join(', ');

    final locationParts = <String>[];
    final city = therapist.user?.country?.name.trim();
    if (city != null && city.isNotEmpty) locationParts.add(city);
    final location = locationParts.isEmpty ? '—' : locationParts.join(', ');

    final languages = therapist.user?.spokenLanguages ?? const [];
    final languagesLabel = languages.isEmpty
        ? '—'
        : languages.map((l) => l.name).join(', ');

    final avatarUrl = therapist.user?.profileUrl;

    final currencySymbol = therapist.currency?.symbol ?? '\$';
    final rate = therapist.ratePerHour ?? 0;

    final showTransfer = onTransferSelect != null;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppAvatar(imageUrl: avatarUrl, size: 64.w),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  displayName,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: context.onSurface,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  specialty,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: context.onSurfaceVariant,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 16.sp,
                      color: context.onSurfaceVariant,
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: context.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Row(
                  children: [
                    Icon(
                      Icons.translate,
                      size: 16.sp,
                      color: context.onSurfaceVariant,
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: Text(
                        languagesLabel,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: context.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Text(
                      '$currencySymbol$rate',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        color: context.primary,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      '/ hour',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 36.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.secondary,
                          foregroundColor: context.onSecondary,
                        ),
                        onPressed: onViewProfile,
                        child: const Text('view profile'),
                      ),
                    ),
                  ],
                ),
                if (showTransfer) ...[
                  SizedBox(height: 8.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: onTransferSelect,
                      icon: const Icon(Icons.sync_alt_outlined, size: 18),
                      label: const Text('choose for transfer'),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
