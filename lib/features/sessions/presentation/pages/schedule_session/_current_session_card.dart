part of '../schedule_session_page.dart';

class _CurrentSessionCard extends StatelessWidget {
  final DateTime? dateTime;
  final Duration? duration;

  const _CurrentSessionCard({required this.dateTime, required this.duration});

  @override
  Widget build(BuildContext context) {
    final dt = dateTime;
    final durationLabel = duration == null ? '—' : '${duration!.inMinutes} min';
    final dateLabel = dt == null
        ? '—'
        : DateFormat('EEEE, MMM d').format(dt).toLowerCase();
    final timeLabel = dt == null
        ? '—'
        : DateFormat('h:mm a').format(dt).toLowerCase();

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: context.surfaceContainer,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: context.outline),
      ),
      child: Row(
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 18.sp,
            color: context.onSurfaceVariant,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              '$dateLabel • $timeLabel ($durationLabel)',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: context.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
