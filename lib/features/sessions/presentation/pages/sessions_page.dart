import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruh/core/utils/app_toast.dart';
import 'package:ruh/features/sessions/presentation/widgets/session_card.dart';
import 'package:ruh/features/sessions/presentation/widgets/sessions_header.dart';
import 'package:ruh/features/sessions/presentation/widgets/sessions_segmented_control.dart';

class SessionsPage extends StatefulWidget {
  const SessionsPage({super.key});

  @override
  State<SessionsPage> createState() => _SessionsPageState();
}

class _SessionsPageState extends State<SessionsPage> {
  SessionsSegment _segment = SessionsSegment.upcoming;

  void _comingSoon() {
    AppToast.showSuccess(context, 'Coming soon');
  }

  @override
  Widget build(BuildContext context) {
    final isUpcoming = _segment == SessionsSegment.upcoming;

    final items = isUpcoming
        ? const [
            _SessionVm(
              therapistName: 'dr. emily chen',
              therapyType: 'cognitive behavioral therapy',
              status: SessionStatus.confirmed,
              dateLabel: 'tomorrow',
              timeLabel: '3:00 pm',
              durationLabel: '50 min',
            ),
            _SessionVm(
              therapistName: 'dr. james mitchell',
              therapyType: 'trauma & anxiety',
              status: SessionStatus.confirmed,
              dateLabel: 'fri, jan 26',
              timeLabel: '10:00 am',
              durationLabel: '50 min',
            ),
          ]
        : const [
            _SessionVm(
              therapistName: 'dr. emily chen',
              therapyType: 'cognitive behavioral therapy',
              status: SessionStatus.completed,
              dateLabel: 'jan 15, 2025',
              timeLabel: '3:00 pm',
              durationLabel: '50 min',
            ),
            _SessionVm(
              therapistName: 'dr. emily chen',
              therapyType: 'cognitive behavioral therapy',
              status: SessionStatus.completed,
              dateLabel: 'jan 8, 2025',
              timeLabel: '3:00 pm',
              durationLabel: '50 min',
            ),
          ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 24.h),
          child: Column(
            children: [
              const SessionsHeader(),
              SizedBox(height: 16.h),
              SessionsSegmentedControl(
                selected: _segment,
                onChanged: (s) => setState(() => _segment = s),
              ),
              SizedBox(height: 16.h),
              for (final s in items) ...[
                SessionCard(
                  therapistName: s.therapistName,
                  therapyType: s.therapyType,
                  status: s.status,
                  dateLabel: s.dateLabel,
                  timeLabel: s.timeLabel,
                  durationLabel: s.durationLabel,
                  isUpcoming: isUpcoming,
                  onPrimaryAction: _comingSoon,
                  onSecondaryAction: _comingSoon,
                ),
                SizedBox(height: 14.h),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _SessionVm {
  final String therapistName;
  final String therapyType;
  final SessionStatus status;
  final String dateLabel;
  final String timeLabel;
  final String durationLabel;

  const _SessionVm({
    required this.therapistName,
    required this.therapyType,
    required this.status,
    required this.dateLabel,
    required this.timeLabel,
    required this.durationLabel,
  });
}
