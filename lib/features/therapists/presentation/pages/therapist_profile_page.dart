import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ruh/core/router/app_routes.dart';
import 'package:ruh/core/utils/theme_extensions.dart';
import 'package:ruh/features/sessions/presentation/pages/schedule_session_page.dart';
import 'package:ruh/features/therapists/domain/entities/certificate.dart';
import 'package:ruh/features/therapists/domain/entities/therapist.dart';
import 'package:ruh/shared/widgets/app_avatar.dart';
import 'package:ruh/shared/widgets/app_cached_image.dart';

class TherapistProfilePage extends StatelessWidget {
  final TherapistOutput therapist;

  const TherapistProfilePage({super.key, required this.therapist});

  @override
  Widget build(BuildContext context) {
    final user = therapist.user;
    final nameRaw = user?.fullName.trim();
    final name = (nameRaw == null || nameRaw.isEmpty) ? 'therapist' : nameRaw;

    final bio = therapist.bio?.trim();
    final about = (bio == null || bio.isEmpty) ? '—' : bio;

    final specializations = therapist.specializations
        .map((s) => s.name.trim())
        .where((s) => s.isNotEmpty)
        .toList();
    final specialty = specializations.isEmpty
        ? 'specialization'
        : specializations.join(', ');

    final location = user?.country?.name.trim();
    final locationLabel = (location == null || location.isEmpty)
        ? '—'
        : location;

    final languages = user?.spokenLanguages ?? const [];
    final languagesLabel = languages.isEmpty
        ? '—'
        : languages.map((l) => l.name).join(', ');

    final avatarUrl = user?.profileUrl;

    final currencySymbol = therapist.currency?.symbol ?? '\$';
    final rate = therapist.ratePerHour ?? 0;

    final certificates = therapist.certificates;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Header(imageUrl: avatarUrl, onBack: () => context.pop()),
              Padding(
                padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.h),
                    Text(
                      name.toLowerCase(),
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w900,
                        color: context.onSurface,
                        height: 1.1,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      specialty.toLowerCase(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: context.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Wrap(
                      spacing: 14.w,
                      runSpacing: 8.h,
                      children: [
                        _InfoPill(
                          icon: Icons.location_on_outlined,
                          label: locationLabel.toLowerCase(),
                        ),
                        _InfoPill(
                          icon: Icons.translate,
                          label: languagesLabel.toLowerCase(),
                        ),
                      ],
                    ),
                    SizedBox(height: 18.h),
                    _SectionCard(
                      title: 'about',
                      child: Text(
                        about,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: context.onSurfaceVariant,
                          height: 1.35,
                        ),
                      ),
                    ),
                    if (certificates.isNotEmpty) ...[
                      SizedBox(height: 14.h),
                      _SectionCard(
                        title: 'qualifications',
                        child: Column(
                          children: [
                            for (int i = 0; i < certificates.length; i++) ...[
                              _QualificationItem(certificate: certificates[i]),
                              if (i != certificates.length - 1)
                                SizedBox(height: 12.h),
                            ],
                          ],
                        ),
                      ),
                    ],
                    SizedBox(height: 14.h),
                    _SectionCard(
                      title: 'session fee',
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '$currencySymbol$rate',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w900,
                              color: context.primary,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h),
                            child: Text(
                              '/ hour',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: context.onSurfaceVariant,
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 40.h,
                            child: ElevatedButton(
                              onPressed: () {
                                context.push(
                                  AppRoutes.scheduleSession,
                                  extra: ScheduleSessionPageArgs(
                                    mode: ScheduleSessionMode.book,
                                    therapistName: name,
                                  ),
                                );
                              },
                              child: const Text('book a session'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 18.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String? imageUrl;
  final VoidCallback onBack;

  const _Header({required this.imageUrl, required this.onBack});

  @override
  Widget build(BuildContext context) {
    final headerHeight = 220.h;
    final avatarSize = 92.w;

    return SizedBox(
      height: headerHeight + (avatarSize / 2),
      child: Stack(
        children: [
          SizedBox(
            height: headerHeight,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22.r),
                bottomRight: Radius.circular(22.r),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  AppCachedImage(imageUrl: imageUrl, fit: BoxFit.cover),
                  // Soft overlay so text/icons stay readable.
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.10),
                          Colors.black.withValues(alpha: 0.25),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 8.w,
            child: IconButton(
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 20.w,
            bottom: 0,
            child: AppAvatar(imageUrl: imageUrl, size: avatarSize),
          ),
        ],
      ),
    );
  }
}

class _InfoPill extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoPill({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(999.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.sp, color: context.onSurfaceVariant),
          SizedBox(width: 6.w),
          Text(
            label,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w700,
              color: context.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const _SectionCard({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.8,
              color: context.onSurfaceVariant,
            ),
          ),
          SizedBox(height: 10.h),
          child,
        ],
      ),
    );
  }
}

class _QualificationItem extends StatelessWidget {
  final Certificate certificate;

  const _QualificationItem({required this.certificate});

  @override
  Widget build(BuildContext context) {
    final titleRaw = certificate.title.trim();
    final title = titleRaw.isEmpty ? 'certificate' : titleRaw;

    final issuerRaw = certificate.issuer.trim();
    final issuer = issuerRaw.isEmpty ? '—' : issuerRaw;

    final year = certificate.issuedDate.year;

    final description = certificate.description?.trim();
    final hasDescription = description != null && description.isNotEmpty;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28.w,
          height: 28.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.surfaceContainerHighest,
            border: Border.all(color: context.outline),
          ),
          child: Icon(
            Icons.school_outlined,
            size: 16.sp,
            color: context.onSurfaceVariant,
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toLowerCase(),
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w800,
                  color: context.onSurface,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                '$issuer • $year'.toLowerCase(),
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w700,
                  color: context.onSurfaceVariant,
                ),
              ),
              if (hasDescription) ...[
                SizedBox(height: 6.h),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    color: context.onSurfaceVariant,
                    height: 1.3,
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
